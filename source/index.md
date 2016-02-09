---
title: API Reference

language_tabs:
  - curl
  - ruby
  - python
  - php

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='http://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - orders
  - snippets
  - errors
  

search: true
---

# Brands

Hi there. Brand facets for identifying and categorizing products according to their manufacturer or company metonym.

|||
|---|---|
| **Manages** |
| OAuth Scopes | `store_v2_products`
||`store_v2_products_read_only`





## Operations

*   [List Brands](#list-brands)
*   [Get a Brand](#get-a-brand)
*   [Get a Count of Brands](#get-a-count-of-brands)
*   [Create a Brand](#create-a-brand)
*   [Update a Brand](#update-a-brand)
*   [Delete a Brand](#delete-a-brand)
*   [Delete All Brands](#delete-all-brands)

## List Brands

Gets the collection of brands. (Default sorting is by brand id, from lowest to highest.)

*   [OAuth](#list-brands-oauth)
>`GET /stores/{store_hash}/v2/brands`
*   [Basic Auth](#list-brands-basic)
>`GET /api/v2/brands`

### Filters

Filter parameters can be added to the URL query string to select specific brands in the collection.

| Parameter | Type | Example |
| --- | --- | --- |
| `name` | string | `/api/v2/brands?name={value}` |
| `min_id` | int | `/api/v2/brands?min_id={value}` |
| `max_id` | int | `/api/v2/brands?max_id={value}` |

### Pagination

Parameters can be added to the URL query string to paginate the collection. The maximum limit is 250\. If a limit isn’t provided, up to 50 brands are returned by default.

| Parameter | Type | Example |
| --- | --- | --- |
| `Page` | int | `/api/v2/brands?page={number}` |
| `Limit` | int | `/api/v2/brands?limit={count}` |

### Response

Example JSON returned in the response:

```
[
  {
    "id": 1,
    "name": "Apple",
    "page_title": "",
    "meta_keywords": "",
    "meta_description": "",
    "image_file": "",
    "search_keywords": ""
  },
  {
    "id": 2,
    "name": "Microsoft",
    "page_title": "",
    "meta_keywords": "",
    "meta_description": "",
    "image_file": "",
    "search_keywords": ""
  }
]
```

## Get a Brand

Gets a brand.

*   [OAuth](#get-a-brand-oauth)
>`GET /stores/{store_hash}/v2/brands/{id}`
*   [Basic Auth](#get-a-brand-basic)
>`GET /api/v2/brands/{id}`

### Response

Example JSON returned in the response:

```
{
  "id": 1,
  "name": "Apple",
  "page_title": "",
  "meta_keywords": "",
  "meta_description": "",
  "image_file": "",
  "search_keywords": ""
}
```

## Get a Count of Brands

Returns the total number of brands in the store.

*   [OAuth](#get-a-count-of-brands-oauth)
>`GET /stores/{store_hash}/v2/brands/count`
*   [Basic Auth](#get-a-count-of-brands-basic)
>`GET /api/v2/brands/count`

### Response

Example JSON returned in the response:

```
{
  "count": 25
}
```

## Create a Brand

Creates a new brand.


*   [OAuth](#create-a-brand-oauth)
>`POST /stores/{store_hash}/v2/brands`
*   [Basic Auth](#create-a-brand-basic)
>`POST /api/v2/brands`

### Read-only Properties

The following properties of the brand are read-only. If one or more of these properties are included in the request, it will be rejected.

*   `id`

### Requirements

The following properties of the brand are required. The request won’t be fulfilled unless these properties are valid.

*   `name`

### Notes

To maximize system performance, Bigcommerce caps the number of brands that can be added to a store at 30,000\. If your POST causes the store to exceed the maximum of 30,000 brands, Bigcommerce will return a 403 error.

### Request

Example request object:

```
{
  "name": "Xmen",
  "page_title": "X men brand"
}
```

### Response

Example JSON returned in the response:

```
{
  "id": 10,
  "name": "Xmen",
  "page_title": "X men brand",
  "meta_keywords": null,
  "meta_description": null,
  "image_file": "",
  "search_keywords": ""
}
```

## Update a Brand

Updates an existing brand.

*   [OAuth](#update-a-brand-oauth)
>`PUT /stores/{store_hash}/v2/brands/{id}`
*   [Basic Auth](#update-a-brand-basic)
>`PUT /api/v2/brands/{id}`

### Read-only Properties

The following properties of the brand are read-only. If one or more of these properties are included in the request, it will be rejected.

*   `id`

### Requirements

The following properties of the brand are required. The request won’t be fulfilled unless these properties are valid.

### Response

Example JSON returned in the response:

```
{
  "id": 10,
  "name": "Xmen",
  "page_title": "X men brand",
  "meta_keywords": null,
  "meta_description": null,
  "image_file": "t/apirmzk0a__43675.jpg",
  "search_keywords": "xmen, awesomeness"
}
```

## Delete a Brand

Deletes a brand.

*   [OAuth](#delete-a-brand-oauth)
">`DELETE /stores/{store_hash}/v2/brands/{id}`
*   [Basic Auth](#delete-a-brand-basic)
>`DELETE /api/v2/brands/{id}`

## Delete All Brands

Deletes all brands belonging to a product.

*   [OAuth](#delete-all-brands-oauth)
>`DELETE /stores/{store_hash}/v2/brands`
*   [Basic Auth](#delete-all-brands-basic)
>`DELETE /api/v2/brands`


# Categories

Index of hierarchical categories used to organize and group products.

|||
|---|---|
| **Manages** |
| **OAuth Scopes** | `store_v2_products`
||`store_v2_products_read_only`


## Operations

*   [List Categories](#list-categories)
*   [Get a Category](#get-a-category)
*   [Get a Count of Categories](#get-a-count-of-categories)
*   [Create a Category](#create-a-category)
*   [Update a Category](#update-a-category)
*   [Delete a Category](#delete-a-category)
*   [Delete All Categories](#delete-all-categories)

## List Categories

Gets the list of categories. (Default sorting is by category id, from lowest to highest.)

*   [OAuth](#list-categories-oauth)
>`GET /stores/{store_hash}/v2/categories`
*   [Basic Auth](#list-categories-basic)
>`GET /api/v2/categories`


### Filters

Filter parameters can be added to the URL query string to select specific categories in the collection.

| Parameter | Type | Example |
| --- | --- | --- |
| `parent_id` | string | `/api/v2/categories?parent_id={value}` |
| `name` | string | `/api/v2/categories?name={value}` |
| `is_visible` | string | `/api/v2/categories?is_visible={value}` |
| `min_id` | int | `/api/v2/categories?min_id={value}` |
| `max_id` | int | `/api/v2/categories?max_id={value}` |

### Pagination

Parameters can be added to the URL query string to paginate the collection. The maximum limit is 250\. If a limit isn’t provided, up to 50 categories are returned by default.

| Parameter | Type | Example |
| --- | --- | --- |
| `Page` | int | `/api/v2/categories?page={number}` |
| `Limit` | int | `/api/v2/categories?limit={count}` |

### Response

Example JSON returned in the response:

```
[
  {
    "id": 1,
    "parent_id": 0,
    "name": "Shop Mac",
    "description": "",
    "sort_order": 0,
    "page_title": "",
    "meta_keywords": "",
    "meta_description": "",
    "layout_file": "category.html",
    "parent_category_list": [
      1
    ],
    "image_file": "",
    "is_visible": true,
    "search_keywords": "",
    "url": "/shop-mac/"
  }
]
```

## Get a Category

Gets a single category.

*   [OAuth](#get-a-category-oauth)
>`GET /stores/{store_hash}/v2/categories/{id}`
*   [Basic Auth](#get-a-category-basic)
>`GET /api/v2/categories/{id}`

### Response

Example JSON returned in the response:

```
{
  "id": 10,
  "parent_id": 1,
  "name": "Xmen toys",
  "description": "",
  "sort_order": 2,
  "page_title": "",
  "meta_keywords": null,
  "meta_description": null,
  "layout_file": "category.html",
  "parent_category_list": [
    1,
    10
  ],
  "image_file": "d/apiy2uz6q__69888.jpg",
  "is_visible": true,
  "search_keywords": "",
  "url": "/xmen-toys/"
}
```

## Get a Count of Categories

Gets a count of the total number of categories in the store.

*   [OAuth](#get-a-count-of-categories-oauth)
>`GET /stores/{store_hash}/v2/categories/count`
*   [Basic Auth](#get-a-count-of-categories-basic)
>`GET /api/v2/categories/count`

### Response

Example JSON returned in the response:

```
{
  "count": 10
}
```

## Create a Category

Creates a new category.

*   [OAuth](#create-a-category-oauth)
>`POST /stores/{store_hash}/v2/categories`
*   [Basic Auth](#create-a-category-basic)
>`POST /api/v2/categories`

### Read-only Properties

The following properties of the category are read-only. If one or more of these properties are included in the request, it will be rejected.

*   `id`
*   `parent_category_list`

### Requirements

The following properties of the category are required. The request won’t be fulfilled unless these properties are valid.

*   `name`

### Notes

To maximize system performance, Bigcommerce caps the number of categories that can be added to a store at 16,000\. If your POST causes the store to exceed the maximum of 16,000 categories, Bigcommerce will return a 403 error.

In addition, Bigcommerce caps the total number of parent categories at seven. If your `POST` includes the ID of a parent category in the `parent_id` field, Bigcommerce will check that parent category and its parent and so on to determine the total number of parent categories. If your `POST` would cause the total number of parent categories to exceed seven, Bigcommerce will return a 403 error.

### Request

Example request object:

```
{
  "name": "Xmen toys"
}
```

### Response

Example JSON returned in the response:

```
{
  "id": 10,
  "parent_id": 1,
  "name": "Xmen toys",
  "description": "",
  "sort_order": 2,
  "page_title": "",
  "meta_keywords": null,
  "meta_description": null,
  "layout_file": "category.html",
  "parent_category_list": [
    1,
    10
  ],
  "image_file": "d/apiy2uz6q__69888.jpg",
  "is_visible": true,
  "search_keywords": "",
  "url": "/xmen-toys/"
}
```
## Update a Category

Updates an existing category.

*   [OAuth](#update-a-category-oauth)
>`PUT /stores/{store_hash}/v2/categories/{id}`
*   [Basic Auth](#update-a-category-basic)
>`PUT /api/v2/categories/{id}`

### Read-only Properties

The following properties of the category are read-only. If one or more of these properties are included in the request, it will be rejected.

*   `id`
*   `parent_category_list`

### Requirements

The following properties of the category are required. The request won’t be fulfilled unless these properties are valid.

### Notes

To maximize system performance, Bigcommerce caps the total number of parent categories at seven. If your `PUT` includes the ID of a parent category in the `parent_id` field, Bigcommerce will check the parent and any children of the current category to determine the total number of parent categories. If your `PUT` would cause the total number of parent categories to exceed the maximum of seven, Bigcommerce will return a 403 error.

### Response

Example JSON returned in the response:

```
{
  "id": 10,
  "parent_id": 1,
  "name": "Xmen toys",
  "description": "",
  "sort_order": 2,
  "page_title": "",
  "meta_keywords": null,
  "meta_description": null,
  "layout_file": "category.html",
  "parent_category_list": [
    1,
    10
  ],
  "image_file": "d/apiy2uz6q__69888.jpg",
  "is_visible": true,
  "search_keywords": "",
  "url": "/xmen-toys/"
}
```

## Delete a Category

Deletes a category.


*   [OAuth](#delete-a-category-oauth)
>`DELETE /stores/{store_hash}/v2/categories/{id}`
*   [Basic Auth](#delete-a-category-basic)
>`DELETE /api/v2/categories/{id}`

## Delete All Categories

Deletes all the categories in the store.

*   [OAuth](#delete-all-categories-oauth)
>`DELETE /stores/{store_hash}/v2/categories`
*   [Basic Auth](#delete-all-categories-basic)
>`DELETE /api/v2/categories`

### Notes

>The DELETE all categories operation will not succeed unless the store has zero products. If any products in the store belong to any categories, the entire operation will fail. Therefore, if you really want to delete all the categories of the store, you must first delete all of the products in the store.


# Authentication

> To authorize, use this code:

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
```

```shell
# With shell, you can just pass the correct header with each request
curl "api_endpoint_here"
  -H "Authorization: meowmeowmeow"
```

> Make sure to replace `meowmeowmeow` with your API key.

Kittn uses API keys to allow access to the API. You can register a new Kittn API key at our [developer portal](http://example.com/developers).

Kittn expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: meowmeowmeow`

<aside class="notice">
You must replace <code>meowmeowmeow</code> with your personal API key.
</aside>

# Kittens

## Get All Kittens

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
api.kittens.get
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
api.kittens.get()
```

```shell
curl "http://example.com/api/kittens"
  -H "Authorization: meowmeowmeow"
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "name": "Fluffums",
    "breed": "calico",
    "fluffiness": 6,
    "cuteness": 7
  },
  {
    "id": 2,
    "name": "Isis",
    "breed": "unknown",
    "fluffiness": 5,
    "cuteness": 10
  }
]
```

This endpoint retrieves all kittens.

### HTTP Request

`GET http://example.com/api/kittens`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
include_cats | false | If set to true, the result will also include cats.
available | true | If set to false, the result will include kittens that have already been adopted.

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>

## Get a Specific Kitten

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
api.kittens.get(2)
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
api.kittens.get(2)
```

```shell
curl "http://example.com/api/kittens/2"
  -H "Authorization: meowmeowmeow"
```

> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "name": "Isis",
  "breed": "unknown",
  "fluffiness": 5,
  "cuteness": 10
}
```

This endpoint retrieves a specific kitten.

<aside class="warning">If you're not using an administrator API key, note that some kittens will return 403 Forbidden if they are hidden for admins only.</aside>

### HTTP Request
c
`GET http://example.com/kittens/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the kitten to retrieve

# Message Block Samples

<aside class="success">This is a <em>success</em> block.</aside>

<aside class="notice">This is a <em>notice</em> block.</aside>

<aside class="warning">This is a <em>warning</em> block.</aside>

