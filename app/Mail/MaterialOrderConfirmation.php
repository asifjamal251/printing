<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Barryvdh\DomPDF\Facade\Pdf;

class MaterialOrderConfirmation extends Mailable
{
    use Queueable, SerializesModels;

    protected $pdf;
    protected $toAddresses;
    protected $ccAddresses;
    protected $material;
    protected $items;
    protected $subjectLine;

    public function __construct($pdf, $toAddresses, $ccAddresses, $material, $items, $subjectLine)
    {
        $this->pdf = $pdf;
        $this->toAddresses = $toAddresses;
        $this->ccAddresses = $ccAddresses;
        $this->material = $material;
        $this->items = $items;
        $this->subjectLine = $subjectLine;
    }

    public function build()
    {
        $uniqueSubject = $this->subjectLine . $this->generateZeroWidthSpace();

        $email = $this->view('emails.order-confirmation')
                      ->with([
                            'material' => $this->material,
                            'items' => $this->items,
                        ])
                      ->attachData($this->pdf, 'order-confirmation.pdf', [
                          'mime' => 'application/pdf',
                      ])
                      ->subject($uniqueSubject)
                      ->withSwiftMessage(function ($message) {
                          $messageId = $this->generateMessageId();
                          $message->getHeaders()->addTextHeader('Message-ID', $messageId);
                          // Ensure no grouping headers are added
                          $message->getHeaders()->remove('References');
                          $message->getHeaders()->remove('In-Reply-To');
                      });

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

    private function generateMessageId()
    {
        return sprintf(
            "<%s@%s>",
            bin2hex(random_bytes(16)),
            env('MAIL_MESSAGE_ID_DOMAIN', 'defaultdomain.com')
        );
    }

    private function generateZeroWidthSpace()
    {
        return "\u{200B}"; // Zero-width space character
    }
}
