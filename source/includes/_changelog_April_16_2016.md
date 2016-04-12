# New API SKU Properties Available

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
