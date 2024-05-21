<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;
use Barryvdh\DomPDF\Facade\Pdf;

class MaterialOrderConfirmatiom extends Mailable
{
    use Queueable, SerializesModels;

    protected $pdf;
    protected $toAddresses;
    protected $ccAddresses;
    protected $material;
    protected $items;

    public function __construct($pdf, $toAddresses, $ccAddresses, $material, $items)
    {
        $this->pdf = $pdf;
        $this->toAddresses = $toAddresses;
        $this->ccAddresses = $ccAddresses;
        $this->material = $material;
        $this->items = $items;
    }


    public function build()
    {
        $email = $this->view('emails.order-confirmation')
                      ->with([
                            'material' => $this->material,
                            'items' => $this->items,
                        ])
                      ->attachData($this->pdf, 'order-confirmation.pdf', [
                          'mime' => 'application/pdf',
                      ]);

        // Add recipients
        foreach ($this->toAddresses as $address) {
            $email->to($address);
        }

        // Add CC addresses
        foreach ($this->ccAddresses as $address) {
            $email->cc($address);
        }

        return $email;
    }
}
