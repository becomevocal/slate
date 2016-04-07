## Profile of an individual store.

|||
|---|---|
| Managed by | [Store Information Resource](/api/stores/v2/store_information)


## Properties

| Title | Name | Type | Description |
| --- | --- | --- | --- |
| `id` | `string` | Unique store identifier. |
| `domain` | `string` | Primary domain name. |
| `name` | `string` | The store's name |
| `address` | `string` | Display address |
| `phone` | `string` | Display phone number |
| `admin_email` | `string` | Email address of the store administrator |
| `order_email` | `string` | Email address for orders and fulfilment |
| `language` | `string` | Default language code |
| `currency` | `string` | Default currency code |
| `currency_symbol` | `string` | Default symbol for values in the currency |
| `decimal_separator` | `string` | Default decimal separator for values in the currency |
| `thousands_separator` | `string` | Default thousands separator for values in the currency |
| `decimal_places` | `string` | Default decimal places for values in the currency |
| `currency_symbol_location` | `string` | Default position of the currency symbol (left or right) |
| `weight_units` | `string` | Default weight units (metric or imperial) |
| `dimension_units` | `string` | Default dimension units (metric or imperial) |
| `dimension_decimal_places` | `string` | The number of decimal places |
| `dimension_decimal_token` | `string` | The symbol that separates the whole numbers from the decimal points |
| `dimension_thousands_token` | `string` | The symbol used to denote thousands |
| `plan_name` | `string` | Name of the Bigcommerce plan this store belongs to |
| `logo` | `object` |
| `is_price_entered_with_tax` | `boolean` | A BOOLEAN value that indicates whether or not prices are entered with tax |
| `active_comparison_modules` | `array` |

## Events

### Store Cancelled

```
store/app/uninstall
```

Occurs when a client store is cancelled and uninstalled from the platform.

