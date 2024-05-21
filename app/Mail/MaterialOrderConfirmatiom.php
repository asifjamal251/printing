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

    public $pdf;
    public $toAddresses;
    public $ccAddresses;
    public $material;

    /**
     * Create a new message instance.
     *
     * @param string $pdf
     * @param array $toAddresses
     * @param array $ccAddresses
     * @param array $material
     */
    public function __construct($pdf, $toAddresses, $ccAddresses, $material)
    {
        $this->pdf = $pdf;
        $this->toAddresses = $toAddresses;
        $this->ccAddresses = $ccAddresses;
        $this->material = $material;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $email = $this->view('emails.order-confirmation')
                      ->with('material', $this->material)
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
