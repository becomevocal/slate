# 2016

## April 

### New API SKU Properties Available

We have updated the product SKU API to make several new properties available directly on the SKU resource. This update means that you no longer need to create a product rule in order to set these properties – you can now update them directly on the SKU:

| Property | Type | Description |
|---|---|---|
| price | decimal | This SKU's base price on the storefront. If this value is null, the product's default price (set in the Product resource's price field) will be used as the base price. |
| adjusted_price | decimal | The SKU's price on the storefront – after the product's base price is inherited, and/or any option set or any product rules are applied. This property is READ-ONLY. |
| weight | decimal | This SKU's base weight on the storefront. If this value is null, the product's default weight (set in the Product resource's weight field) will be used as the base weight. |
| adjusted_weight | decimal | This SKU's weight on the storefront – after the product's base weight is inherited, and/or any option set or any product rules are applied. This property is READ-ONLY.|
| is_purchasing_disabled | boolean | If true, this prohibits purchasing of the SKU.|
| purchasing_disabled_message | string  | The message to display if purchasing is disabled on this SKU. |
| image_file | string | The image that will be displayed when this SKU is selected on the storefront. When updating a SKU image, send the publicly accessible URL. Supported image formats are JPEG, PNG, and GIF. |

You can see the new SKU schema on our updated [Object page][1]. You'll find usage guidelines, and updated sample responses, on our updated [Resources page][2].

This update requires no immediate changes to your applications. Any existing SKU-only rules will still function as before, and will still be accessible via the API.

However, as we make SKU-only properties available directly on SKUs, BigCommerce plans to eventually deprecate the management of SKU-only properties via product rules.

[1]: /api/v2/
[2]: /api/v2/

## March

###SNI (Server Name Indication) required as of June 30, 2016

As of June 30, 2016, all requests to the Bigcommerce API will be required to support [Server Name Indication][1] (SNI). After that date, requests will fail if they don't support SNI.

[1]: https://en.m.wikipedia.org/wiki/Server_Name_Indication

### Orders API provies opt-in email field

The Orders API provides a new `is_email_opt_in` field. This Boolean field will be `true` if the shopper has opted in (on the checkout page) to receive a store's email newsletter. It is read-only.

We have updated the following documentation to cover this new field:  

* [Orders][1] object
* [Create an Order][2] endpoint
* [Update an Order][3] endpoint

[1]: /api/v2/#orders
[2]: /api/v2/#create-an-order
[3]: /api/v2/#update-an-order

### Stencil Framework now generally available

Developers can now install the Stencil themes framework without registering for access. Please follow the documentation link that's relevant to your experience with Stencil:

* New to Stencil? We recommend starting with [this overview][1].
* Installing Stencil for the first time? Use these [complete instructions][2].
* Early Access participant? To receive future updates of the framework, we ask that you please [reinstall Stencil][3] from our new open repositories.

[1]: https://stencil.bigcommerce.com/docs
[2]: https://stencil.bigcommerce.com/docs/installing-and-launching-stencil-1
[3]: https://stencil.bigcommerce.com/docs/early-access-please-reinstall

## February 

### Gift Certificate API

Bigcommerce has published a new API for managing gift certificates. The API allows your applications to manage gift certificates' amount/balance, purchaser, recipient, dates of purchase and expiration, and current status.

The new endpoint information is available [here][1].

[1]: /api/v2#gift_certificates