<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Rest\Preview\Wireless;

use Twilio\Exceptions\TwilioException;
use Twilio\InstanceContext;
use Twilio\ListResource;
use Twilio\Options;
use Twilio\Rest\Preview\Wireless\Sim\UsageList;
use Twilio\Values;
use Twilio\Version;

/**
 * PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
 *
 * @property UsageList $usage
 * @method \Twilio\Rest\Preview\Wireless\Sim\UsageContext usage()
 */
class SimContext extends InstanceContext {
    protected $_usage;

    /**
     * Initialize the SimContext
     *
     * @param Version $version Version that contains the resource
     * @param string $sid The sid
     */
    public function __construct(Version $version, $sid) {
        parent::__construct($version);

        // Path Solution
        $this->solution = ['sid' => $sid, ];

        $this->uri = '/Sims/' . \rawurlencode($sid) . '';
    }

    /**
     * Fetch a SimInstance
     *
     * @return SimInstance Fetched SimInstance
     * @throws TwilioException When an HTTP error occurs.
     */
    public function fetch(): SimInstance {
        $params = Values::of([]);

        $payload = $this->version->fetch(
            'GET',
            $this->uri,
            $params
        );

        return new SimInstance($this->version, $payload, $this->solution['sid']);
    }

    /**
     * Update the SimInstance
     *
     * @param array|Options $options Optional Arguments
     * @return SimInstance Updated SimInstance
     * @throws TwilioException When an HTTP error occurs.
     */
    public function update(array $options = []): SimInstance {
        $options = new Values($options);

        $data = Values::of([
            'UniqueName' => $options['uniqueName'],
            'CallbackMethod' => $options['callbackMethod'],
            'CallbackUrl' => $options['callbackUrl'],
            'FriendlyName' => $options['friendlyName'],
            'RatePlan' => $options['ratePlan'],
            'Status' => $options['status'],
            'CommandsCallbackMethod' => $options['commandsCallbackMethod'],
            'CommandsCallbackUrl' => $options['commandsCallbackUrl'],
            'SmsFallbackMethod' => $options['smsFallbackMethod'],
            'SmsFallbackUrl' => $options['smsFallbackUrl'],
            'SmsMethod' => $options['smsMethod'],
            'SmsUrl' => $options['smsUrl'],
            'VoiceFallbackMethod' => $options['voiceFallbackMethod'],
            'VoiceFallbackUrl' => $options['voiceFallbackUrl'],
            'VoiceMethod' => $options['voiceMethod'],
            'VoiceUrl' => $options['voiceUrl'],
        ]);

        $payload = $this->version->update(
            'POST',
            $this->uri,
            [],
            $data
        );

        return new SimInstance($this->version, $payload, $this->solution['sid']);
    }

    /**
     * Access the usage
     */
    protected function getUsage(): UsageList {
        if (!$this->_usage) {
            $this->_usage = new UsageList($this->version, $this->solution['sid']);
        }

        return $this->_usage;
    }

    /**
     * Magic getter to lazy load subresources
     *
     * @param string $name Subresource to return
     * @return ListResource The requested subresource
     * @throws TwilioException For unknown subresources
     */
    public function __get(string $name): ListResource {
        if (\property_exists($this, '_' . $name)) {
            $method = 'get' . \ucfirst($name);
            return $this->$method();
        }

        throw new TwilioException('Unknown subresource ' . $name);
    }

    /**
     * Magic caller to get resource contexts
     *
     * @param string $name Resource to return
     * @param array $arguments Context parameters
     * @return InstanceContext The requested resource context
     * @throws TwilioException For unknown resource
     */
    public function __call(string $name, array $arguments): InstanceContext {
        $property = $this->$name;
        if (\method_exists($property, 'getContext')) {
            return \call_user_func_array(array($property, 'getContext'), $arguments);
        }

        throw new TwilioException('Resource does not have a context');
    }

    /**
     * Provide a friendly representation
     *
     * @return string Machine friendly representation
     */
    public function __toString(): string {
        $context = [];
        foreach ($this->solution as $key => $value) {
            $context[] = "$key=$value";
        }
        return '[Twilio.Preview.Wireless.SimContext ' . \implode(' ', $context) . ']';
    }
}