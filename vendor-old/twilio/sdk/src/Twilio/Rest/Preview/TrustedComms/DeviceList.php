<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Rest\Preview\TrustedComms;

use Twilio\Exceptions\TwilioException;
use Twilio\ListResource;
use Twilio\Values;
use Twilio\Version;

/**
 * PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
 */
class DeviceList extends ListResource {
    /**
     * Construct the DeviceList
     *
     * @param Version $version Version that contains the resource
     */
    public function __construct(Version $version) {
        parent::__construct($version);

        // Path Solution
        $this->solution = [];

        $this->uri = '/Devices';
    }

    /**
     * Create a new DeviceInstance
     *
     * @param string $phoneNumber The end user Phone Number
     * @param string $pushToken The Push Token for this Phone Number
     * @return DeviceInstance Newly created DeviceInstance
     * @throws TwilioException When an HTTP error occurs.
     */
    public function create(string $phoneNumber, string $pushToken): DeviceInstance {
        $data = Values::of(['PhoneNumber' => $phoneNumber, 'PushToken' => $pushToken, ]);

        $payload = $this->version->create(
            'POST',
            $this->uri,
            [],
            $data
        );

        return new DeviceInstance($this->version, $payload);
    }

    /**
     * Provide a friendly representation
     *
     * @return string Machine friendly representation
     */
    public function __toString(): string {
        return '[Twilio.Preview.TrustedComms.DeviceList]';
    }
}