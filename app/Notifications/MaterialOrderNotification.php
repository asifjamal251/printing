<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Notification;

class MaterialOrderNotification extends Notification
{
    use Queueable;

    protected $order;

    public function __construct($order)
    {
        $this->order = $order;
    }

    public function via($notifiable)
    {
        return ['database'];
    }

    public function toDatabase($notifiable)
    {
        $url = url('/admin/material-order/' . $this->order->id);
        return [
            'order_no' => $this->order->order_no,
            'order_id' => $this->order->id,
            'message' => 'New material order placed.',
            'url' => $url,
            // Add more data as needed
        ];
    }
}
