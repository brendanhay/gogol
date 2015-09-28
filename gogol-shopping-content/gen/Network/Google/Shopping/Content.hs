{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Shopping.Content
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Manage product items, inventory, and Merchant Center accounts for Google
-- Shopping.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference>
module Network.Google.Shopping.Content
    (
    -- * REST Resources

    -- ** Content API for Shopping
      ShoppingContent
    , shoppingContent
    , shoppingContentURL

    -- ** content.orders.acknowledge
    , module Network.Google.API.Content.Orders.Acknowledge

    -- ** content.orders.advancetestorder
    , module Network.Google.API.Content.Orders.Advancetestorder

    -- ** content.orders.cancel
    , module Network.Google.API.Content.Orders.Cancel

    -- ** content.orders.cancellineitem
    , module Network.Google.API.Content.Orders.Cancellineitem

    -- ** content.orders.createtestorder
    , module Network.Google.API.Content.Orders.Createtestorder

    -- ** content.orders.custombatch
    , module Network.Google.API.Content.Orders.Custombatch

    -- ** content.orders.get
    , module Network.Google.API.Content.Orders.Get

    -- ** content.orders.getbymerchantorderid
    , module Network.Google.API.Content.Orders.Getbymerchantorderid

    -- ** content.orders.gettestordertemplate
    , module Network.Google.API.Content.Orders.Gettestordertemplate

    -- ** content.orders.list
    , module Network.Google.API.Content.Orders.List

    -- ** content.orders.refund
    , module Network.Google.API.Content.Orders.Refund

    -- ** content.orders.returnlineitem
    , module Network.Google.API.Content.Orders.Returnlineitem

    -- ** content.orders.shiplineitems
    , module Network.Google.API.Content.Orders.Shiplineitems

    -- ** content.orders.updatemerchantorderid
    , module Network.Google.API.Content.Orders.Updatemerchantorderid

    -- ** content.orders.updateshipment
    , module Network.Google.API.Content.Orders.Updateshipment

    -- * Types

    -- ** OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , olrNextPageToken
    , olrKind
    , olrResources

    -- ** OrdersShipLineItemsResponse
    , OrdersShipLineItemsResponse
    , ordersShipLineItemsResponse
    , oslirKind
    , oslirExecutionStatus

    -- ** OrdersReturnLineItemResponse
    , OrdersReturnLineItemResponse
    , ordersReturnLineItemResponse
    , orlirKind
    , orlirExecutionStatus

    -- ** OrdersUpdateShipmentResponse
    , OrdersUpdateShipmentResponse
    , ordersUpdateShipmentResponse
    , ousrKind
    , ousrExecutionStatus

    -- ** OrderLineItemShippingDetailsMethod
    , OrderLineItemShippingDetailsMethod
    , orderLineItemShippingDetailsMethod
    , olisdmCarrier
    , olisdmMethodName
    , olisdmMaxDaysInTransit
    , olisdmMinDaysInTransit

    -- ** OrdersCreateTestOrderResponse
    , OrdersCreateTestOrderResponse
    , ordersCreateTestOrderResponse
    , octorKind
    , octorOrderId

    -- ** OrdersRefundRequest
    , OrdersRefundRequest
    , ordersRefundRequest
    , orrAmount
    , orrReason
    , orrOperationId
    , orrReasonText

    -- ** OrdersCustomBatchRequestEntryCancelLineItem
    , OrdersCustomBatchRequestEntryCancelLineItem
    , ordersCustomBatchRequestEntryCancelLineItem
    , ocbrecliQuantity
    , ocbrecliLineItemId
    , ocbrecliReason
    , ocbrecliReasonText

    -- ** Alt
    , Alt (..)

    -- ** OrderLineItemShippingDetails
    , OrderLineItemShippingDetails
    , orderLineItemShippingDetails
    , olisdShipByDate
    , olisdMethod
    , olisdDeliverByDate

    -- ** OrderLineItemProductVariantAttribute
    , OrderLineItemProductVariantAttribute
    , orderLineItemProductVariantAttribute
    , olipvaDimension
    , olipvaValue

    -- ** Price
    , Price
    , price
    , pValue
    , pCurrency

    -- ** OrdersCustomBatchResponseEntry
    , OrdersCustomBatchResponseEntry
    , ordersCustomBatchResponseEntry
    , ocbreKind
    , ocbreExecutionStatus
    , ocbreErrors
    , ocbreOrder
    , ocbreBatchId

    -- ** OrdersCancelResponse
    , OrdersCancelResponse
    , ordersCancelResponse
    , ocrKind
    , ocrExecutionStatus

    -- ** OrderRefund
    , OrderRefund
    , orderRefund
    , orAmount
    , orActor
    , orReason
    , orCreationDate
    , orReasonText

    -- ** TestOrderLineItemProduct
    , TestOrderLineItemProduct
    , testOrderLineItemProduct
    , tolipImageLink
    , tolipChannel
    , tolipBrand
    , tolipTargetCountry
    , tolipGtin
    , tolipItemGroupId
    , tolipOfferId
    , tolipPrice
    , tolipVariantAttributes
    , tolipTitle
    , tolipContentLanguage
    , tolipMpn
    , tolipCondition

    -- ** OrderDeliveryDetails
    , OrderDeliveryDetails
    , orderDeliveryDetails
    , oddAddress
    , oddPhoneNumber

    -- ** TestOrder
    , TestOrder
    , testOrder
    , toKind
    , toLineItems
    , toShippingOption
    , toPredefinedDeliveryAddress
    , toShippingCostTax
    , toCustomer
    , toPaymentMethod
    , toShippingCost

    -- ** OrderAddress
    , OrderAddress
    , orderAddress
    , oaRecipientName
    , oaStreetAddress
    , oaCountry
    , oaPostalCode
    , oaLocality
    , oaIsPostOfficeBox
    , oaFullAddress
    , oaRegion

    -- ** TestOrderLineItem
    , TestOrderLineItem
    , testOrderLineItem
    , toliQuantityOrdered
    , toliReturnInfo
    , toliShippingDetails
    , toliProduct
    , toliUnitTax

    -- ** Errors
    , Errors
    , errors
    , eCode
    , eMessage
    , eErrors

    -- ** OrdersCancelLineItemResponse
    , OrdersCancelLineItemResponse
    , ordersCancelLineItemResponse
    , oclirKind
    , oclirExecutionStatus

    -- ** OrderPaymentMethod
    , OrderPaymentMethod
    , orderPaymentMethod
    , opmExpirationMonth
    , opmExpirationYear
    , opmPhoneNumber
    , opmBillingAddress
    , opmLastFourDigits
    , opmType

    -- ** OrderShipment
    , OrderShipment
    , orderShipment
    , osCarrier
    , osStatus
    , osTrackingId
    , osLineItems
    , osId
    , osCreationDate
    , osDeliveryDate

    -- ** OrdersShipLineItemsRequest
    , OrdersShipLineItemsRequest
    , ordersShipLineItemsRequest
    , oslirCarrier
    , oslirTrackingId
    , oslirShipmentId
    , oslirLineItems
    , oslirOperationId

    -- ** OrdersCustomBatchRequestEntryRefund
    , OrdersCustomBatchRequestEntryRefund
    , ordersCustomBatchRequestEntryRefund
    , ocbrerAmount
    , ocbrerReason
    , ocbrerReasonText

    -- ** OrderCancellation
    , OrderCancellation
    , orderCancellation
    , ocQuantity
    , ocActor
    , ocReason
    , ocCreationDate
    , ocReasonText

    -- ** OrdersCustomBatchResponse
    , OrdersCustomBatchResponse
    , ordersCustomBatchResponse
    , ocbrEntries
    , ocbrKind

    -- ** OrderReturn
    , OrderReturn
    , orderReturn
    , oQuantity
    , oActor
    , oReason
    , oCreationDate
    , oReasonText

    -- ** OrdersAcknowledgeRequest
    , OrdersAcknowledgeRequest
    , ordersAcknowledgeRequest
    , oarOperationId

    -- ** OrdersUpdateMerchantOrderIdRequest
    , OrdersUpdateMerchantOrderIdRequest
    , ordersUpdateMerchantOrderIdRequest
    , oumoirMerchantOrderId
    , oumoirOperationId

    -- ** TestOrderCustomer
    , TestOrderCustomer
    , testOrderCustomer
    , tocFullName
    , tocEmail
    , tocExplicitMarketingPreference

    -- ** OrdersAdvanceTestOrderResponse
    , OrdersAdvanceTestOrderResponse
    , ordersAdvanceTestOrderResponse
    , oatorKind

    -- ** OrdersCustomBatchRequestEntry
    , OrdersCustomBatchRequestEntry
    , ordersCustomBatchRequestEntry
    , oMerchantId
    , oCancelLineItem
    , oRefund
    , oUpdateShipment
    , oReturnLineItem
    , oMerchantOrderId
    , oMethod
    , oShipLineItems
    , oOperationId
    , oOrderId
    , oCancel
    , oBatchId

    -- ** OrderCustomer
    , OrderCustomer
    , orderCustomer
    , ocFullName
    , ocEmail
    , ocExplicitMarketingPreference

    -- ** OrdersCancelRequest
    , OrdersCancelRequest
    , ordersCancelRequest
    , ocrReason
    , ocrOperationId
    , ocrReasonText

    -- ** OrdersGetByMerchantOrderIdResponse
    , OrdersGetByMerchantOrderIdResponse
    , ordersGetByMerchantOrderIdResponse
    , ogbmoirKind
    , ogbmoirOrder

    -- ** OrderShipmentLineItemShipment
    , OrderShipmentLineItemShipment
    , orderShipmentLineItemShipment
    , oslisQuantity
    , oslisLineItemId

    -- ** OrderLineItem
    , OrderLineItem
    , orderLineItem
    , oliQuantityOrdered
    , oliReturnInfo
    , oliQuantityDelivered
    , oliShippingDetails
    , oliQuantityPending
    , oliCancellations
    , oliQuantityCanceled
    , oliId
    , oliTax
    , oliPrice
    , oliQuantityShipped
    , oliQuantityReturned
    , oliProduct
    , oliReturns

    -- ** OrdersUpdateShipmentRequest
    , OrdersUpdateShipmentRequest
    , ordersUpdateShipmentRequest
    , ousrCarrier
    , ousrStatus
    , ousrTrackingId
    , ousrShipmentId
    , ousrOperationId

    -- ** OrdersReturnLineItemRequest
    , OrdersReturnLineItemRequest
    , ordersReturnLineItemRequest
    , orlirQuantity
    , orlirLineItemId
    , orlirReason
    , orlirOperationId
    , orlirReasonText

    -- ** TestOrderPaymentMethod
    , TestOrderPaymentMethod
    , testOrderPaymentMethod
    , topmExpirationMonth
    , topmExpirationYear
    , topmLastFourDigits
    , topmType
    , topmPredefinedBillingAddress

    -- ** OrdersCustomBatchRequestEntryShipLineItems
    , OrdersCustomBatchRequestEntryShipLineItems
    , ordersCustomBatchRequestEntryShipLineItems
    , ocbresliCarrier
    , ocbresliTrackingId
    , ocbresliShipmentId
    , ocbresliLineItems

    -- ** OrdersCreateTestOrderRequest
    , OrdersCreateTestOrderRequest
    , ordersCreateTestOrderRequest
    , octorTemplateName
    , octorTestOrder

    -- ** OrdersGetTestOrderTemplateResponse
    , OrdersGetTestOrderTemplateResponse
    , ordersGetTestOrderTemplateResponse
    , ogtotrKind
    , ogtotrTemplate

    -- ** OrdersRefundResponse
    , OrdersRefundResponse
    , ordersRefundResponse
    , orrKind
    , orrExecutionStatus

    -- ** Error'
    , Error'
    , error'
    , errDomain
    , errReason
    , errMessage

    -- ** OrdersGettestordertemplate'TemplateName
    , OrdersGettestordertemplate'TemplateName (..)

    -- ** OrdersCustomBatchRequest
    , OrdersCustomBatchRequest
    , ordersCustomBatchRequest
    , oEntries

    -- ** Order
    , Order
    , order
    , ordrStatus
    , ordrMerchantId
    , ordrRefunds
    , ordrKind
    , ordrLineItems
    , ordrShipments
    , ordrNetAmount
    , ordrPlacedDate
    , ordrDeliveryDetails
    , ordrShippingOption
    , ordrMerchantOrderId
    , ordrAcknowledged
    , ordrShippingCostTax
    , ordrCustomer
    , ordrId
    , ordrPaymentMethod
    , ordrPaymentStatus
    , ordrShippingCost

    -- ** OrdersCustomBatchRequestEntryUpdateShipment
    , OrdersCustomBatchRequestEntryUpdateShipment
    , ordersCustomBatchRequestEntryUpdateShipment
    , ocbreusCarrier
    , ocbreusStatus
    , ocbreusTrackingId
    , ocbreusShipmentId

    -- ** OrderLineItemProduct
    , OrderLineItemProduct
    , orderLineItemProduct
    , olipImageLink
    , olipShownImage
    , olipChannel
    , olipBrand
    , olipTargetCountry
    , olipGtin
    , olipItemGroupId
    , olipOfferId
    , olipId
    , olipPrice
    , olipVariantAttributes
    , olipTitle
    , olipContentLanguage
    , olipMpn
    , olipCondition

    -- ** OrdersCustomBatchRequestEntryReturnLineItem
    , OrdersCustomBatchRequestEntryReturnLineItem
    , ordersCustomBatchRequestEntryReturnLineItem
    , ocbrerliQuantity
    , ocbrerliLineItemId
    , ocbrerliReason
    , ocbrerliReasonText

    -- ** OrdersList'OrderBy
    , OrdersList'OrderBy (..)

    -- ** OrdersAcknowledgeResponse
    , OrdersAcknowledgeResponse
    , ordersAcknowledgeResponse
    , oarKind
    , oarExecutionStatus

    -- ** OrdersUpdateMerchantOrderIdResponse
    , OrdersUpdateMerchantOrderIdResponse
    , ordersUpdateMerchantOrderIdResponse
    , oumoirKind
    , oumoirExecutionStatus

    -- ** OrdersCancelLineItemRequest
    , OrdersCancelLineItemRequest
    , ordersCancelLineItemRequest
    , oclirQuantity
    , oclirLineItemId
    , oclirReason
    , oclirOperationId
    , oclirReasonText

    -- ** OrderLineItemReturnInfo
    , OrderLineItemReturnInfo
    , orderLineItemReturnInfo
    , oliriIsReturnable
    , oliriPolicyUrl
    , oliriDaysToReturn

    -- ** OrdersCustomBatchRequestEntryCancel
    , OrdersCustomBatchRequestEntryCancel
    , ordersCustomBatchRequestEntryCancel
    , ocbrecReason
    , ocbrecReasonText

    -- ** OrdersList'Statuses
    , OrdersList'Statuses (..)
    ) where

import           Network.Google.API.Content.Orders.Acknowledge
import           Network.Google.API.Content.Orders.Advancetestorder
import           Network.Google.API.Content.Orders.Cancel
import           Network.Google.API.Content.Orders.Cancellineitem
import           Network.Google.API.Content.Orders.Createtestorder
import           Network.Google.API.Content.Orders.Custombatch
import           Network.Google.API.Content.Orders.Get
import           Network.Google.API.Content.Orders.Getbymerchantorderid
import           Network.Google.API.Content.Orders.Gettestordertemplate
import           Network.Google.API.Content.Orders.List
import           Network.Google.API.Content.Orders.Refund
import           Network.Google.API.Content.Orders.Returnlineitem
import           Network.Google.API.Content.Orders.Shiplineitems
import           Network.Google.API.Content.Orders.Updatemerchantorderid
import           Network.Google.API.Content.Orders.Updateshipment
import           Network.Google.Prelude
import           Network.Google.Shopping.Content.Types

{- $resources
TODO
-}

type ShoppingContent =
     OrdersCancellineitemAPI :<|> OrdersAcknowledgeAPI
       :<|> OrdersUpdateshipmentAPI
       :<|> OrdersReturnlineitemAPI
       :<|> OrdersGetAPI
       :<|> OrdersRefundAPI
       :<|> OrdersUpdatemerchantorderidAPI
       :<|> OrdersListAPI
       :<|> OrdersCustombatchAPI
       :<|> OrdersCancelAPI
       :<|> OrdersGetbymerchantorderidAPI
       :<|> OrdersGettestordertemplateAPI
       :<|> OrdersCreatetestorderAPI
       :<|> OrdersShiplineitemsAPI
       :<|> OrdersAdvancetestorderAPI

shoppingContent :: Proxy ShoppingContent
shoppingContent = Proxy
