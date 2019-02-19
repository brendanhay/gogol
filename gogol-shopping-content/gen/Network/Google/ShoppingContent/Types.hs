{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ShoppingContent.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ShoppingContent.Types
    (
    -- * Service Configuration
      shoppingContentService

    -- * OAuth Scopes
    , contentScope

    -- * OrdersAcknowledgeRequest
    , OrdersAcknowledgeRequest
    , ordersAcknowledgeRequest
    , oarOperationId

    -- * AccountTax
    , AccountTax
    , accountTax
    , atRules
    , atKind
    , atAccountId

    -- * OrderinvoicesCreateRefundInvoiceResponse
    , OrderinvoicesCreateRefundInvoiceResponse
    , orderinvoicesCreateRefundInvoiceResponse
    , ocrirKind
    , ocrirExecutionStatus

    -- * OrdersUpdateMerchantOrderIdRequest
    , OrdersUpdateMerchantOrderIdRequest
    , ordersUpdateMerchantOrderIdRequest
    , oumoirMerchantOrderId
    , oumoirOperationId

    -- * OrderReportTransaction
    , OrderReportTransaction
    , orderReportTransaction
    , ortMerchantId
    , ortDisbursementId
    , ortDisbursementCreationDate
    , ortTransactionDate
    , ortDisbursementDate
    , ortMerchantOrderId
    , ortProductAmount
    , ortOrderId
    , ortDisbursementAmount

    -- * OrdersAdvanceTestOrderResponse
    , OrdersAdvanceTestOrderResponse
    , ordersAdvanceTestOrderResponse
    , oatorKind

    -- * ProductsCustomBatchResponse
    , ProductsCustomBatchResponse
    , productsCustomBatchResponse
    , pcbrEntries
    , pcbrKind

    -- * OrderMerchantProvidedAnnotation
    , OrderMerchantProvidedAnnotation
    , orderMerchantProvidedAnnotation
    , ompaValue
    , ompaKey

    -- * OrdersGettestOrdertemplateTemplateName
    , OrdersGettestOrdertemplateTemplateName (..)

    -- * TestOrderCustomer
    , TestOrderCustomer
    , testOrderCustomer
    , tocFullName
    , tocEmail
    , tocMarketingRightsInfo

    -- * DatafeedstatusesCustomBatchResponse
    , DatafeedstatusesCustomBatchResponse
    , datafeedstatusesCustomBatchResponse
    , dcbrEntries
    , dcbrKind

    -- * OrderReturn
    , OrderReturn
    , orderReturn
    , orQuantity
    , orActor
    , orReason
    , orCreationDate
    , orReasonText

    -- * AccounttaxCustomBatchResponseEntry
    , AccounttaxCustomBatchResponseEntry
    , accounttaxCustomBatchResponseEntry
    , acbreAccountTax
    , acbreKind
    , acbreErrors
    , acbreBatchId

    -- * PosSaleResponse
    , PosSaleResponse
    , posSaleResponse
    , psrStoreCode
    , psrKind
    , psrItemId
    , psrQuantity
    , psrTargetCountry
    , psrGtin
    , psrPrice
    , psrContentLanguage
    , psrTimestamp
    , psrSaleId

    -- * Amount
    , Amount
    , amount
    , aPretax
    , aTax

    -- * AccountsAuthInfoResponse
    , AccountsAuthInfoResponse
    , accountsAuthInfoResponse
    , aairKind
    , aairAccountIdentifiers

    -- * OrderReportDisbursement
    , OrderReportDisbursement
    , orderReportDisbursement
    , ordMerchantId
    , ordDisbursementId
    , ordDisbursementCreationDate
    , ordDisbursementDate
    , ordDisbursementAmount

    -- * UnitInvoice
    , UnitInvoice
    , unitInvoice
    , uiUnitPriceTaxes
    , uiPromotions
    , uiAdditionalCharges
    , uiUnitPricePretax

    -- * PosSale
    , PosSale
    , posSale
    , psStoreCode
    , psKind
    , psItemId
    , psQuantity
    , psTargetCountry
    , psGtin
    , psPrice
    , psContentLanguage
    , psTimestamp
    , psSaleId

    -- * AccountStatusItemLevelIssue
    , AccountStatusItemLevelIssue
    , accountStatusItemLevelIssue
    , asiliNumItems
    , asiliResolution
    , asiliDocumentation
    , asiliCode
    , asiliServability
    , asiliAttributeName
    , asiliDescription
    , asiliDetail

    -- * LiaSettingsRequestGmbAccessResponse
    , LiaSettingsRequestGmbAccessResponse
    , liaSettingsRequestGmbAccessResponse
    , lsrgarKind

    -- * ProductStatusDestinationStatus
    , ProductStatusDestinationStatus
    , productStatusDestinationStatus
    , psdsDestination
    , psdsStatus

    -- * AccountTaxTaxRule
    , AccountTaxTaxRule
    , accountTaxTaxRule
    , attrUseGlobalRate
    , attrCountry
    , attrShippingTaxed
    , attrLocationId
    , attrRatePercent

    -- * PostalCodeGroup
    , PostalCodeGroup
    , postalCodeGroup
    , pcgCountry
    , pcgPostalCodeRanges
    , pcgName

    -- * DatafeedsCustomBatchRequest
    , DatafeedsCustomBatchRequest
    , datafeedsCustomBatchRequest
    , dEntries

    -- * OrderpaymentsNotifyChargeRequest
    , OrderpaymentsNotifyChargeRequest
    , orderpaymentsNotifyChargeRequest
    , oncrInvoiceIds
    , oncrChargeState

    -- * OrdersCancelTestOrderByCustomerResponse
    , OrdersCancelTestOrderByCustomerResponse
    , ordersCancelTestOrderByCustomerResponse
    , octobcrKind

    -- * LiaOnDisplayToOrderSettings
    , LiaOnDisplayToOrderSettings
    , liaOnDisplayToOrderSettings
    , lodtosStatus
    , lodtosShippingCostPolicyURL

    -- * OrderpaymentsNotifyAuthDeclinedResponse
    , OrderpaymentsNotifyAuthDeclinedResponse
    , orderpaymentsNotifyAuthDeclinedResponse
    , onadrKind
    , onadrExecutionStatus

    -- * AccountAddress
    , AccountAddress
    , accountAddress
    , aaStreetAddress
    , aaCountry
    , aaPostalCode
    , aaLocality
    , aaRegion

    -- * InvoiceSummaryAdditionalChargeSummary
    , InvoiceSummaryAdditionalChargeSummary
    , invoiceSummaryAdditionalChargeSummary
    , isacsTotalAmount
    , isacsType

    -- * RefundReason
    , RefundReason
    , refundReason
    , rrReasonCode
    , rrDescription

    -- * OrderLineItemShippingDetailsMethod
    , OrderLineItemShippingDetailsMethod
    , orderLineItemShippingDetailsMethod
    , olisdmCarrier
    , olisdmMethodName
    , olisdmMaxDaysInTransit
    , olisdmMinDaysInTransit

    -- * Datafeed
    , Datafeed
    , datafeed
    , dKind
    , dFormat
    , dAttributeLanguage
    , dFetchSchedule
    , dName
    , dTargets
    , dId
    , dContentType
    , dFileName

    -- * OrdersCreateTestOrderResponse
    , OrdersCreateTestOrderResponse
    , ordersCreateTestOrderResponse
    , octorKind
    , octorOrderId

    -- * AccountsCustomBatchResponseEntry
    , AccountsCustomBatchResponseEntry
    , accountsCustomBatchResponseEntry
    , aKind
    , aAccount
    , aErrors
    , aBatchId

    -- * OrdersListOrderBy
    , OrdersListOrderBy (..)

    -- * GmbAccounts
    , GmbAccounts
    , gmbAccounts
    , gaGmbAccounts
    , gaAccountId

    -- * CustomerReturnReason
    , CustomerReturnReason
    , customerReturnReason
    , crrReasonCode
    , crrDescription

    -- * AccountIdentifier
    , AccountIdentifier
    , accountIdentifier
    , aiMerchantId
    , aiAggregatorId

    -- * PosCustomBatchRequest
    , PosCustomBatchRequest
    , posCustomBatchRequest
    , pEntries

    -- * OrderinvoicesCreateChargeInvoiceRequest
    , OrderinvoicesCreateChargeInvoiceRequest
    , orderinvoicesCreateChargeInvoiceRequest
    , occirShipmentGroupId
    , occirLineItemInvoices
    , occirInvoiceId
    , occirInvoiceSummary
    , occirOperationId

    -- * OrderLineItem
    , OrderLineItem
    , orderLineItem
    , oliAnnotations
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

    -- * Service
    , Service
    , service
    , sDeliveryCountry
    , sRateGroups
    , sDeliveryTime
    , sActive
    , sName
    , sCurrency
    , sEligibility
    , sMinimumOrderValue

    -- * ProductstatusesCustomBatchResponse
    , ProductstatusesCustomBatchResponse
    , productstatusesCustomBatchResponse
    , proEntries
    , proKind

    -- * ProductUnitPricingMeasure
    , ProductUnitPricingMeasure
    , productUnitPricingMeasure
    , pupmValue
    , pupmUnit

    -- * OrdersUpdateShipmentRequest
    , OrdersUpdateShipmentRequest
    , ordersUpdateShipmentRequest
    , ousrCarrier
    , ousrStatus
    , ousrTrackingId
    , ousrShipmentId
    , ousrDeliveryDate
    , ousrOperationId

    -- * OrderShipmentLineItemShipment
    , OrderShipmentLineItemShipment
    , orderShipmentLineItemShipment
    , oslisQuantity
    , oslisLineItemId
    , oslisProductId

    -- * OrdersListStatuses
    , OrdersListStatuses (..)

    -- * OrderreportsListTransactionsResponse
    , OrderreportsListTransactionsResponse
    , orderreportsListTransactionsResponse
    , oltrNextPageToken
    , oltrTransactions
    , oltrKind

    -- * LiaSettingsCustomBatchResponse
    , LiaSettingsCustomBatchResponse
    , liaSettingsCustomBatchResponse
    , lscbrEntries
    , lscbrKind

    -- * LoyaltyPoints
    , LoyaltyPoints
    , loyaltyPoints
    , lpRatio
    , lpPointsValue
    , lpName

    -- * LiaSettingsSetPosDataProviderResponse
    , LiaSettingsSetPosDataProviderResponse
    , liaSettingsSetPosDataProviderResponse
    , lsspdprKind

    -- * AccountStatus
    , AccountStatus
    , accountStatus
    , asAccountLevelIssues
    , asKind
    , asAccountId
    , asProducts
    , asWebsiteClaimed

    -- * ShippingSettingsCustomBatchRequestEntry
    , ShippingSettingsCustomBatchRequestEntry
    , shippingSettingsCustomBatchRequestEntry
    , sscbreMerchantId
    , sscbreAccountId
    , sscbreMethod
    , sscbreShippingSettings
    , sscbreBatchId

    -- * PosInventoryResponse
    , PosInventoryResponse
    , posInventoryResponse
    , pirStoreCode
    , pirKind
    , pirItemId
    , pirQuantity
    , pirTargetCountry
    , pirGtin
    , pirPrice
    , pirContentLanguage
    , pirTimestamp

    -- * AccountstatusesCustomBatchRequest
    , AccountstatusesCustomBatchRequest
    , accountstatusesCustomBatchRequest
    , acbrEntries

    -- * AccounttaxListResponse
    , AccounttaxListResponse
    , accounttaxListResponse
    , alrNextPageToken
    , alrKind
    , alrResources

    -- * LiaSettingsRequestInventoryVerificationResponse
    , LiaSettingsRequestInventoryVerificationResponse
    , liaSettingsRequestInventoryVerificationResponse
    , lsrivrKind

    -- * OrderinvoicesCreateChargeInvoiceResponse
    , OrderinvoicesCreateChargeInvoiceResponse
    , orderinvoicesCreateChargeInvoiceResponse
    , occirKind
    , occirExecutionStatus

    -- * DatafeedsFetchNowResponse
    , DatafeedsFetchNowResponse
    , datafeedsFetchNowResponse
    , dfnrKind

    -- * OrdersGetTestOrderTemplateResponse
    , OrdersGetTestOrderTemplateResponse
    , ordersGetTestOrderTemplateResponse
    , ogtotrKind
    , ogtotrTemplate

    -- * AccountsCustomBatchRequestEntry
    , AccountsCustomBatchRequestEntry
    , accountsCustomBatchRequestEntry
    , accMerchantId
    , accForce
    , accAccount
    , accAccountId
    , accMethod
    , accOverwrite
    , accBatchId
    , accLinkRequest

    -- * Weight
    , Weight
    , weight
    , wValue
    , wUnit

    -- * OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    , ocbrecriroReason
    , ocbrecriroDescription

    -- * LiaSettingsListResponse
    , LiaSettingsListResponse
    , liaSettingsListResponse
    , lslrNextPageToken
    , lslrKind
    , lslrResources

    -- * Error'
    , Error'
    , error'
    , eDomain
    , eReason
    , eMessage

    -- * ProductstatusesListResponse
    , ProductstatusesListResponse
    , productstatusesListResponse
    , plrNextPageToken
    , plrKind
    , plrResources

    -- * OrderPromotionItem
    , OrderPromotionItem
    , orderPromotionItem
    , opiQuantity
    , opiLineItemId
    , opiProductId

    -- * PosCustomBatchResponse
    , PosCustomBatchResponse
    , posCustomBatchResponse
    , posEntries
    , posKind

    -- * OrdersCreateTestOrderRequest
    , OrdersCreateTestOrderRequest
    , ordersCreateTestOrderRequest
    , octorTemplateName
    , octorCountry
    , octorTestOrder

    -- * AccountUser
    , AccountUser
    , accountUser
    , auAdmin
    , auEmailAddress

    -- * AccountCustomerService
    , AccountCustomerService
    , accountCustomerService
    , acsEmail
    , acsURL
    , acsPhoneNumber

    -- * OrderreturnsListOrderBy
    , OrderreturnsListOrderBy (..)

    -- * GmbAccountsGmbAccount
    , GmbAccountsGmbAccount
    , gmbAccountsGmbAccount
    , gagaEmail
    , gagaListingCount
    , gagaName
    , gagaType

    -- * OrdersInStoreRefundLineItemResponse
    , OrdersInStoreRefundLineItemResponse
    , ordersInStoreRefundLineItemResponse
    , oisrlirKind
    , oisrlirExecutionStatus

    -- * DatafeedsCustomBatchRequestEntry
    , DatafeedsCustomBatchRequestEntry
    , datafeedsCustomBatchRequestEntry
    , dcbreMerchantId
    , dcbreDatafeed
    , dcbreMethod
    , dcbreDatafeedId
    , dcbreBatchId

    -- * OrderCustomerMarketingRightsInfo
    , OrderCustomerMarketingRightsInfo
    , orderCustomerMarketingRightsInfo
    , ocmriExplicitMarketingPreference
    , ocmriMarketingEmailAddress
    , ocmriLastUpdatedTimestamp

    -- * MerchantOrderReturnItem
    , MerchantOrderReturnItem
    , merchantOrderReturnItem
    , moriReturnShipmentIds
    , moriMerchantReturnReason
    , moriState
    , moriCustomerReturnReason
    , moriItemId
    , moriProduct

    -- * AccountStatusAccountLevelIssue
    , AccountStatusAccountLevelIssue
    , accountStatusAccountLevelIssue
    , asaliDestination
    , asaliCountry
    , asaliSeverity
    , asaliDocumentation
    , asaliId
    , asaliTitle
    , asaliDetail

    -- * Value
    , Value
    , value
    , vPricePercentage
    , vCarrierRateName
    , vFlatRate
    , vSubtableName
    , vNoShipping

    -- * Installment
    , Installment
    , installment
    , iAmount
    , iMonths

    -- * DatafeedFetchSchedule
    , DatafeedFetchSchedule
    , datafeedFetchSchedule
    , dfsFetchURL
    , dfsUsername
    , dfsMinuteOfHour
    , dfsPassword
    , dfsDayOfMonth
    , dfsHour
    , dfsWeekday
    , dfsTimeZone
    , dfsPaused

    -- * PosStore
    , PosStore
    , posStore
    , pssStoreCode
    , pssKind
    , pssStoreAddress

    -- * LiaSettingsSetInventoryVerificationContactResponse
    , LiaSettingsSetInventoryVerificationContactResponse
    , liaSettingsSetInventoryVerificationContactResponse
    , lssivcrKind

    -- * ShippingSettingsGetSupportedCarriersResponse
    , ShippingSettingsGetSupportedCarriersResponse
    , shippingSettingsGetSupportedCarriersResponse
    , ssgscrKind
    , ssgscrCarriers

    -- * PosDataProvidersPosDataProvider
    , PosDataProvidersPosDataProvider
    , posDataProvidersPosDataProvider
    , pdppdpProviderId
    , pdppdpFullName
    , pdppdpDisplayName

    -- * HolidaysHoliday
    , HolidaysHoliday
    , holidaysHoliday
    , hhDeliveryGuaranteeHour
    , hhDate
    , hhDeliveryGuaranteeDate
    , hhCountryCode
    , hhId
    , hhType

    -- * AccountsListResponse
    , AccountsListResponse
    , accountsListResponse
    , accNextPageToken
    , accKind
    , accResources

    -- * OrderpaymentsNotifyRefundRequest
    , OrderpaymentsNotifyRefundRequest
    , orderpaymentsNotifyRefundRequest
    , onrrInvoiceIds
    , onrrRefundState

    -- * AccountBusinessInformation
    , AccountBusinessInformation
    , accountBusinessInformation
    , abiAddress
    , abiPhoneNumber
    , abiCustomerService

    -- * CarriersCarrier
    , CarriersCarrier
    , carriersCarrier
    , ccCountry
    , ccName
    , ccServices

    -- * CarrierRate
    , CarrierRate
    , carrierRate
    , crOriginPostalCode
    , crFlatAdjustment
    , crCarrierService
    , crName
    , crPercentageAdjustment
    , crCarrierName

    -- * ShippingSettingsListResponse
    , ShippingSettingsListResponse
    , shippingSettingsListResponse
    , sslrNextPageToken
    , sslrKind
    , sslrResources

    -- * OrdersCreateTestReturnResponse
    , OrdersCreateTestReturnResponse
    , ordersCreateTestReturnResponse
    , octrrKind
    , octrrReturnId

    -- * OrdersShipLineItemsRequest
    , OrdersShipLineItemsRequest
    , ordersShipLineItemsRequest
    , oslirShipmentGroupId
    , oslirShipmentInfos
    , oslirLineItems
    , oslirOperationId

    -- * OrderreturnsListResponse
    , OrderreturnsListResponse
    , orderreturnsListResponse
    , olrNextPageToken
    , olrKind
    , olrResources

    -- * AccountsCustomBatchResponse
    , AccountsCustomBatchResponse
    , accountsCustomBatchResponse
    , acbrcEntries
    , acbrcKind

    -- * OrderpaymentsNotifyAuthApprovedRequest
    , OrderpaymentsNotifyAuthApprovedRequest
    , orderpaymentsNotifyAuthApprovedRequest
    , onaarAuthAmountPretax
    , onaarAuthAmountTax

    -- * OrdersUpdateLineItemShippingDetailsRequest
    , OrdersUpdateLineItemShippingDetailsRequest
    , ordersUpdateLineItemShippingDetailsRequest
    , oulisdrShipByDate
    , oulisdrLineItemId
    , oulisdrDeliverByDate
    , oulisdrOperationId
    , oulisdrProductId

    -- * MerchantOrderReturn
    , MerchantOrderReturn
    , merchantOrderReturn
    , morReturnShipments
    , morMerchantOrderId
    , morReturnItems
    , morCreationDate
    , morOrderId
    , morOrderReturnId

    -- * ProductTax
    , ProductTax
    , productTax
    , ptTaxShip
    , ptCountry
    , ptPostalCode
    , ptRate
    , ptRegion
    , ptLocationId

    -- * PosCustomBatchRequestEntry
    , PosCustomBatchRequestEntry
    , posCustomBatchRequestEntry
    , pcbreMerchantId
    , pcbreStoreCode
    , pcbreTargetMerchantId
    , pcbreMethod
    , pcbreStore
    , pcbreInventory
    , pcbreSale
    , pcbreBatchId

    -- * OrderShipment
    , OrderShipment
    , orderShipment
    , osCarrier
    , osStatus
    , osTrackingId
    , osLineItems
    , osId
    , osCreationDate
    , osDeliveryDate

    -- * AccountsLinkResponse
    , AccountsLinkResponse
    , accountsLinkResponse
    , alrlKind

    -- * OrderLineItemReturnInfo
    , OrderLineItemReturnInfo
    , orderLineItemReturnInfo
    , oliriIsReturnable
    , oliriPolicyURL
    , oliriDaysToReturn

    -- * Account
    , Account
    , account
    , aaUsers
    , aaYouTubeChannelLinks
    , aaKind
    , aaSellerId
    , aaName
    , aaBusinessInformation
    , aaId
    , aaAdsLinks
    , aaWebsiteURL
    , aaGoogleMyBusinessLink
    , aaAdultContent

    -- * ShipmentTrackingInfo
    , ShipmentTrackingInfo
    , shipmentTrackingInfo
    , stiCarrier
    , stiTrackingNumber

    -- * OrdersCancelLineItemRequest
    , OrdersCancelLineItemRequest
    , ordersCancelLineItemRequest
    , oclirQuantity
    , oclirLineItemId
    , oclirReason
    , oclirOperationId
    , oclirProductId
    , oclirReasonText

    -- * ProductShippingWeight
    , ProductShippingWeight
    , productShippingWeight
    , pswValue
    , pswUnit

    -- * AccountstatusesCustomBatchRequestEntry
    , AccountstatusesCustomBatchRequestEntry
    , accountstatusesCustomBatchRequestEntry
    , acbrecMerchantId
    , acbrecAccountId
    , acbrecDestinations
    , acbrecMethod
    , acbrecBatchId

    -- * DeliveryTime
    , DeliveryTime
    , deliveryTime
    , dtHolidayCutoffs
    , dtMinTransitTimeInDays
    , dtCutoffTime
    , dtMinHandlingTimeInDays
    , dtMaxTransitTimeInDays
    , dtMaxHandlingTimeInDays

    -- * LiaCountrySettings
    , LiaCountrySettings
    , liaCountrySettings
    , lcsPosDataProvider
    , lcsCountry
    , lcsStorePickupActive
    , lcsInventory
    , lcsAbout
    , lcsHostedLocalStorefrontActive
    , lcsOnDisplayToOrder

    -- * OrdersReturnRefundLineItemResponse
    , OrdersReturnRefundLineItemResponse
    , ordersReturnRefundLineItemResponse
    , orrlirKind
    , orrlirExecutionStatus

    -- * ProductstatusesCustomBatchResponseEntry
    , ProductstatusesCustomBatchResponseEntry
    , productstatusesCustomBatchResponseEntry
    , pKind
    , pProductStatus
    , pErrors
    , pBatchId

    -- * ShippingSettingsGetSupportedHolidaysResponse
    , ShippingSettingsGetSupportedHolidaysResponse
    , shippingSettingsGetSupportedHolidaysResponse
    , ssgshrKind
    , ssgshrHolidays

    -- * LiaPosDataProvider
    , LiaPosDataProvider
    , liaPosDataProvider
    , lpdpPosExternalAccountId
    , lpdpPosDataProviderId

    -- * DatafeedFormat
    , DatafeedFormat
    , datafeedFormat
    , dfQuotingMode
    , dfFileEncoding
    , dfColumnDelimiter

    -- * LiaSettings
    , LiaSettings
    , liaSettings
    , lsCountrySettings
    , lsKind
    , lsAccountId

    -- * ProductShipping
    , ProductShipping
    , productShipping
    , pService
    , pLocationGroupName
    , pCountry
    , pPostalCode
    , pPrice
    , pRegion
    , pLocationId

    -- * ShippingSettingsCustomBatchRequest
    , ShippingSettingsCustomBatchRequest
    , shippingSettingsCustomBatchRequest
    , sscbrEntries

    -- * LiaSettingsCustomBatchResponseEntry
    , LiaSettingsCustomBatchResponseEntry
    , liaSettingsCustomBatchResponseEntry
    , lscbreGmbAccounts
    , lscbreKind
    , lscbreLiaSettings
    , lscbreErrors
    , lscbrePosDataProviders
    , lscbreBatchId

    -- * AccountsCustomBatchRequest
    , AccountsCustomBatchRequest
    , accountsCustomBatchRequest
    , aEntries

    -- * PosCustomBatchResponseEntry
    , PosCustomBatchResponseEntry
    , posCustomBatchResponseEntry
    , pcbrecKind
    , pcbrecStore
    , pcbrecInventory
    , pcbrecErrors
    , pcbrecSale
    , pcbrecBatchId

    -- * OrderpaymentsNotifyAuthApprovedResponse
    , OrderpaymentsNotifyAuthApprovedResponse
    , orderpaymentsNotifyAuthApprovedResponse
    , onaarKind
    , onaarExecutionStatus

    -- * OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    , oReason
    , oDescription

    -- * OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , oNextPageToken
    , oKind
    , oResources

    -- * OrdersUpdateLineItemShippingDetailsResponse
    , OrdersUpdateLineItemShippingDetailsResponse
    , ordersUpdateLineItemShippingDetailsResponse
    , oulisdrKind
    , oulisdrExecutionStatus

    -- * Headers
    , Headers
    , headers
    , hNumberOfItems
    , hPostalCodeGroupNames
    , hPrices
    , hWeights
    , hLocations

    -- * UnitInvoiceAdditionalCharge
    , UnitInvoiceAdditionalCharge
    , unitInvoiceAdditionalCharge
    , uiacAdditionalChargePromotions
    , uiacAdditionalChargeAmount
    , uiacType

    -- * OrdersShipLineItemsResponse
    , OrdersShipLineItemsResponse
    , ordersShipLineItemsResponse
    , oslirKind
    , oslirExecutionStatus

    -- * UnitInvoiceTaxLine
    , UnitInvoiceTaxLine
    , unitInvoiceTaxLine
    , uitlTaxName
    , uitlTaxType
    , uitlTaxAmount

    -- * OrdersCreateTestReturnRequest
    , OrdersCreateTestReturnRequest
    , ordersCreateTestReturnRequest
    , octrrItems

    -- * ShippingSettings
    , ShippingSettings
    , shippingSettings
    , ssPostalCodeGroups
    , ssAccountId
    , ssServices

    -- * PostalCodeRange
    , PostalCodeRange
    , postalCodeRange
    , pcrPostalCodeRangeBegin
    , pcrPostalCodeRangeEnd

    -- * OrdersUpdateShipmentResponse
    , OrdersUpdateShipmentResponse
    , ordersUpdateShipmentResponse
    , ousrKind
    , ousrExecutionStatus

    -- * ProductstatusesCustomBatchRequest
    , ProductstatusesCustomBatchRequest
    , productstatusesCustomBatchRequest
    , pcbrcEntries

    -- * AccountYouTubeChannelLink
    , AccountYouTubeChannelLink
    , accountYouTubeChannelLink
    , aytclStatus
    , aytclChannelId

    -- * AccountAdsLink
    , AccountAdsLink
    , accountAdsLink
    , aalStatus
    , aalAdsId

    -- * LiaAboutPageSettings
    , LiaAboutPageSettings
    , liaAboutPageSettings
    , lapsStatus
    , lapsURL

    -- * LiaSettingsCustomBatchRequest
    , LiaSettingsCustomBatchRequest
    , liaSettingsCustomBatchRequest
    , lEntries

    -- * CustomAttribute
    , CustomAttribute
    , customAttribute
    , caGroupValues
    , caValue
    , caName

    -- * PosInventoryRequest
    , PosInventoryRequest
    , posInventoryRequest
    , posStoreCode
    , posItemId
    , posQuantity
    , posTargetCountry
    , posGtin
    , posPrice
    , posContentLanguage
    , posTimestamp

    -- * AccountstatusesCustomBatchResponse
    , AccountstatusesCustomBatchResponse
    , accountstatusesCustomBatchResponse
    , acccEntries
    , acccKind

    -- * ShippingSettingsCustomBatchResponseEntry
    , ShippingSettingsCustomBatchResponseEntry
    , shippingSettingsCustomBatchResponseEntry
    , sKind
    , sShippingSettings
    , sErrors
    , sBatchId

    -- * ProductStatus
    , ProductStatus
    , productStatus
    , ppKind
    , ppLink
    , ppDestinationStatuses
    , ppLastUpdateDate
    , ppCreationDate
    , ppTitle
    , ppGoogleExpirationDate
    , ppProductId
    , ppItemLevelIssues

    -- * AccountstatusesListResponse
    , AccountstatusesListResponse
    , accountstatusesListResponse
    , alr1NextPageToken
    , alr1Kind
    , alr1Resources

    -- * OrdersSetLineItemMetadataResponse
    , OrdersSetLineItemMetadataResponse
    , ordersSetLineItemMetadataResponse
    , oslimrKind
    , oslimrExecutionStatus

    -- * AccounttaxCustomBatchRequest
    , AccounttaxCustomBatchRequest
    , accounttaxCustomBatchRequest
    , accEntries

    -- * ProductsCustomBatchRequestEntry
    , ProductsCustomBatchRequestEntry
    , productsCustomBatchRequestEntry
    , prorMerchantId
    , prorMethod
    , prorProduct
    , prorProductId
    , prorBatchId

    -- * AccountGoogleMyBusinessLink
    , AccountGoogleMyBusinessLink
    , accountGoogleMyBusinessLink
    , agmblGmbEmail
    , agmblStatus

    -- * DatafeedstatusesCustomBatchRequestEntry
    , DatafeedstatusesCustomBatchRequestEntry
    , datafeedstatusesCustomBatchRequestEntry
    , dMerchantId
    , dCountry
    , dMethod
    , dDatafeedId
    , dLanguage
    , dBatchId

    -- * OrderCustomer
    , OrderCustomer
    , orderCustomer
    , ocFullName
    , ocEmail
    , ocMarketingRightsInfo

    -- * LocationIdSet
    , LocationIdSet
    , locationIdSet
    , lisLocationIds

    -- * Row
    , Row
    , row
    , rCells

    -- * OrdersGetByMerchantOrderIdResponse
    , OrdersGetByMerchantOrderIdResponse
    , ordersGetByMerchantOrderIdResponse
    , ogbmoirKind
    , ogbmoirOrder

    -- * OrdersRejectReturnLineItemRequest
    , OrdersRejectReturnLineItemRequest
    , ordersRejectReturnLineItemRequest
    , orrlirQuantity
    , orrlirLineItemId
    , orrlirReason
    , orrlirOperationId
    , orrlirProductId
    , orrlirReasonText

    -- * OrdersCancelRequest
    , OrdersCancelRequest
    , ordersCancelRequest
    , ocrReason
    , ocrOperationId
    , ocrReasonText

    -- * ReturnShipment
    , ReturnShipment
    , returnShipment
    , rsShipmentTrackingInfos
    , rsReturnMethodType
    , rsShipmentId
    , rsCreationDate

    -- * OrdersCancelTestOrderByCustomerRequest
    , OrdersCancelTestOrderByCustomerRequest
    , ordersCancelTestOrderByCustomerRequest
    , octobcrReason

    -- * TestOrderCustomerMarketingRightsInfo
    , TestOrderCustomerMarketingRightsInfo
    , testOrderCustomerMarketingRightsInfo
    , tocmriExplicitMarketingPreference
    , tocmriLastUpdatedTimestamp

    -- * ProductStatusItemLevelIssue
    , ProductStatusItemLevelIssue
    , productStatusItemLevelIssue
    , psiliDestination
    , psiliResolution
    , psiliDocumentation
    , psiliCode
    , psiliServability
    , psiliAttributeName
    , psiliDescription
    , psiliDetail

    -- * OrderLineItemProductVariantAttribute
    , OrderLineItemProductVariantAttribute
    , orderLineItemProductVariantAttribute
    , olipvaDimension
    , olipvaValue

    -- * RateGroup
    , RateGroup
    , rateGroup
    , rgCarrierRates
    , rgName
    , rgApplicableShippingLabels
    , rgMainTable
    , rgSingleValue
    , rgSubtables

    -- * OrderPromotion
    , OrderPromotion
    , orderPromotion
    , opShortTitle
    , opAppliedItems
    , opPretaxValue
    , opMerchantPromotionId
    , opSubtype
    , opTitle
    , opType
    , opApplicableItems
    , opTaxValue
    , opFunder

    -- * AccountStatusProducts
    , AccountStatusProducts
    , accountStatusProducts
    , aspDestination
    , aspCountry
    , aspChannel
    , aspStatistics
    , aspItemLevelIssues

    -- * Price
    , Price
    , price
    , pValue
    , pCurrency

    -- * OrderLineItemShippingDetails
    , OrderLineItemShippingDetails
    , orderLineItemShippingDetails
    , olisdShipByDate
    , olisdMethod
    , olisdDeliverByDate

    -- * DatafeedsCustomBatchResponse
    , DatafeedsCustomBatchResponse
    , datafeedsCustomBatchResponse
    , datEntries
    , datKind

    -- * InvoiceSummary
    , InvoiceSummary
    , invoiceSummary
    , isMerchantBalance
    , isCustomerBalance
    , isGoogleBalance
    , isProductTotal
    , isAdditionalChargeSummaries
    , isPromotionSummaries

    -- * OrderpaymentsNotifyChargeResponse
    , OrderpaymentsNotifyChargeResponse
    , orderpaymentsNotifyChargeResponse
    , oncrKind
    , oncrExecutionStatus

    -- * OrderpaymentsNotifyAuthDeclinedRequest
    , OrderpaymentsNotifyAuthDeclinedRequest
    , orderpaymentsNotifyAuthDeclinedRequest
    , onadrDeclineReason

    -- * PosListResponse
    , PosListResponse
    , posListResponse
    , plrlKind
    , plrlResources

    -- * OrderDeliveryDetails
    , OrderDeliveryDetails
    , orderDeliveryDetails
    , oddAddress
    , oddPhoneNumber

    -- * OrderLineItemProductFee
    , OrderLineItemProductFee
    , orderLineItemProductFee
    , olipfAmount
    , olipfName

    -- * OrdersCancelResponse
    , OrdersCancelResponse
    , ordersCancelResponse
    , ocrKind
    , ocrExecutionStatus

    -- * OrdersSetLineItemMetadataRequest
    , OrdersSetLineItemMetadataRequest
    , ordersSetLineItemMetadataRequest
    , oslimrAnnotations
    , oslimrLineItemId
    , oslimrOperationId
    , oslimrProductId

    -- * OrdersRejectReturnLineItemResponse
    , OrdersRejectReturnLineItemResponse
    , ordersRejectReturnLineItemResponse
    , ordKind
    , ordExecutionStatus

    -- * TestOrder
    , TestOrder
    , testOrder
    , toKind
    , toLineItems
    , toShippingOption
    , toPredefinedDeliveryAddress
    , toShippingCostTax
    , toCustomer
    , toEnableOrderinvoices
    , toPromotions
    , toPredefinedBillingAddress
    , toNotificationMode
    , toShippingCost

    -- * CutoffTime
    , CutoffTime
    , cutoffTime
    , ctHour
    , ctTimezone
    , ctMinute

    -- * DatafeedstatusesCustomBatchResponseEntry
    , DatafeedstatusesCustomBatchResponseEntry
    , datafeedstatusesCustomBatchResponseEntry
    , datErrors
    , datDatafeedStatus
    , datBatchId

    -- * OrderRefund
    , OrderRefund
    , orderRefund
    , ordAmount
    , ordActor
    , ordReason
    , ordCreationDate
    , ordReasonText

    -- * TestOrderLineItemProduct
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

    -- * AccounttaxCustomBatchResponse
    , AccounttaxCustomBatchResponse
    , accounttaxCustomBatchResponse
    , acbr1Entries
    , acbr1Kind

    -- * AccountsClaimWebsiteResponse
    , AccountsClaimWebsiteResponse
    , accountsClaimWebsiteResponse
    , acwrKind

    -- * OrderAddress
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

    -- * OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    , OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    , ordersCustomBatchRequestEntryCreateTestReturnReturnItem
    , ocbrectrriQuantity
    , ocbrectrriLineItemId

    -- * ProductUnitPricingBaseMeasure
    , ProductUnitPricingBaseMeasure
    , productUnitPricingBaseMeasure
    , pupbmValue
    , pupbmUnit

    -- * LiaSettingsGetAccessibleGmbAccountsResponse
    , LiaSettingsGetAccessibleGmbAccountsResponse
    , liaSettingsGetAccessibleGmbAccountsResponse
    , lsgagarGmbAccounts
    , lsgagarKind
    , lsgagarAccountId

    -- * DatafeedsListResponse
    , DatafeedsListResponse
    , datafeedsListResponse
    , dlrNextPageToken
    , dlrKind
    , dlrResources

    -- * AccountStatusStatistics
    , AccountStatusStatistics
    , accountStatusStatistics
    , assPending
    , assExpiring
    , assActive
    , assDisApproved

    -- * ProductsCustomBatchResponseEntry
    , ProductsCustomBatchResponseEntry
    , productsCustomBatchResponseEntry
    , pcbre1Kind
    , pcbre1Product
    , pcbre1Errors
    , pcbre1BatchId

    -- * Product
    , Product
    , product
    , prorDisplayAdsLink
    , prorCustomLabel1
    , prorShippingWidth
    , prorImageLink
    , prorIncludedDestinations
    , prorDisplayAdsValue
    , prorLoyaltyPoints
    , prorAdditionalImageLinks
    , prorExcludedDestinations
    , prorColor
    , prorCustomLabel0
    , prorKind
    , prorMinHandlingTime
    , prorMultipack
    , prorPattern
    , prorLink
    , prorProductTypes
    , prorSizeSystem
    , prorUnitPricingBaseMeasure
    , prorTaxes
    , prorMaterial
    , prorInstallment
    , prorChannel
    , prorIdentifierExists
    , prorBrand
    , prorUnitPricingMeasure
    , prorSalePrice
    , prorCostOfGoodsSold
    , prorShippingLength
    , prorCustomLabel3
    , prorMaxHandlingTime
    , prorAvailability
    , prorMinEnergyEfficiencyClass
    , prorTargetCountry
    , prorShippingLabel
    , prorAdsRedirect
    , prorCustomAttributes
    , prorGtin
    , prorAgeGroup
    , prorDisplayAdsTitle
    , prorMaxEnergyEfficiencyClass
    , prorGender
    , prorExpirationDate
    , prorItemGroupId
    , prorSalePriceEffectiveDate
    , prorCustomLabel2
    , prorGoogleProductCategory
    , prorShipping
    , prorShippingWeight
    , prorSellOnGoogleQuantity
    , prorShippingHeight
    , prorAvailabilityDate
    , prorSource
    , prorOfferId
    , prorId
    , prorPrice
    , prorPromotionIds
    , prorSizeType
    , prorMobileLink
    , prorTitle
    , prorAdult
    , prorContentLanguage
    , prorAdsLabels
    , prorEnergyEfficiencyClass
    , prorDisplayAdsSimilarIds
    , prorMpn
    , prorCondition
    , prorSizes
    , prorIsBundle
    , prorDescription
    , prorCustomLabel4
    , prorDisplayAdsId
    , prorAdsGrouping

    -- * LiaSettingsCustomBatchRequestEntry
    , LiaSettingsCustomBatchRequestEntry
    , liaSettingsCustomBatchRequestEntry
    , lGmbEmail
    , lContactEmail
    , lMerchantId
    , lCountry
    , lLiaSettings
    , lAccountId
    , lMethod
    , lContactName
    , lPosExternalAccountId
    , lPosDataProviderId
    , lBatchId

    -- * Errors
    , Errors
    , errors
    , errCode
    , errMessage
    , errErrors

    -- * LiaInventorySettings
    , LiaInventorySettings
    , liaInventorySettings
    , lisInventoryVerificationContactName
    , lisStatus
    , lisInventoryVerificationContactEmail
    , lisInventoryVerificationContactStatus

    -- * AccountstatusesCustomBatchResponseEntry
    , AccountstatusesCustomBatchResponseEntry
    , accountstatusesCustomBatchResponseEntry
    , aaAccountStatus
    , aaErrors
    , aaBatchId

    -- * OrdersCancelLineItemResponse
    , OrdersCancelLineItemResponse
    , ordersCancelLineItemResponse
    , oclirKind
    , oclirExecutionStatus

    -- * HolidayCutoff
    , HolidayCutoff
    , holidayCutoff
    , hcDeadlineHour
    , hcDeadlineTimezone
    , hcVisibleFromDate
    , hcHolidayId
    , hcDeadlineDate

    -- * TestOrderLineItem
    , TestOrderLineItem
    , testOrderLineItem
    , toliQuantityOrdered
    , toliReturnInfo
    , toliShippingDetails
    , toliProduct
    , toliUnitTax

    -- * ProductstatusesCustomBatchRequestEntry
    , ProductstatusesCustomBatchRequestEntry
    , productstatusesCustomBatchRequestEntry
    , p2MerchantId
    , p2Destinations
    , p2Method
    , p2IncludeAttributes
    , p2ProductId
    , p2BatchId

    -- * ShippingSettingsCustomBatchResponse
    , ShippingSettingsCustomBatchResponse
    , shippingSettingsCustomBatchResponse
    , shiEntries
    , shiKind

    -- * OrdersReturnRefundLineItemRequest
    , OrdersReturnRefundLineItemRequest
    , ordersReturnRefundLineItemRequest
    , orrlirrQuantity
    , orrlirrLineItemId
    , orrlirrReason
    , orrlirrOperationId
    , orrlirrProductId
    , orrlirrTaxAmount
    , orrlirrPriceAmount
    , orrlirrReasonText

    -- * ShipmentInvoiceLineItemInvoice
    , ShipmentInvoiceLineItemInvoice
    , shipmentInvoiceLineItemInvoice
    , siliiUnitInvoice
    , siliiShipmentUnitIds
    , siliiLineItemId
    , siliiProductId

    -- * OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , ordersCustomBatchRequestEntryShipLineItemsShipmentInfo
    , ocbreslisiCarrier
    , ocbreslisiTrackingId
    , ocbreslisiShipmentId

    -- * AccountsLinkRequest
    , AccountsLinkRequest
    , accountsLinkRequest
    , alrAction
    , alrLinkedAccountId
    , alrLinkType

    -- * Promotion
    , Promotion
    , promotion
    , pPromotionAmount
    , pPromotionId

    -- * DatafeedTarget
    , DatafeedTarget
    , datafeedTarget
    , dtIncludedDestinations
    , dtExcludedDestinations
    , dtCountry
    , dtLanguage

    -- * OrdersUpdateMerchantOrderIdResponse
    , OrdersUpdateMerchantOrderIdResponse
    , ordersUpdateMerchantOrderIdResponse
    , oumoirKind
    , oumoirExecutionStatus

    -- * OrderreportsListDisbursementsResponse
    , OrderreportsListDisbursementsResponse
    , orderreportsListDisbursementsResponse
    , oldrNextPageToken
    , oldrKind
    , oldrDisbursements

    -- * DatafeedStatusExample
    , DatafeedStatusExample
    , datafeedStatusExample
    , dseLineNumber
    , dseItemId
    , dseValue

    -- * OrdersAcknowledgeResponse
    , OrdersAcknowledgeResponse
    , ordersAcknowledgeResponse
    , oarKind
    , oarExecutionStatus

    -- * PosSaleRequest
    , PosSaleRequest
    , posSaleRequest
    , psrsStoreCode
    , psrsItemId
    , psrsQuantity
    , psrsTargetCountry
    , psrsGtin
    , psrsPrice
    , psrsContentLanguage
    , psrsTimestamp
    , psrsSaleId

    -- * Table
    , Table
    , table
    , tRows
    , tName
    , tColumnHeaders
    , tRowHeaders

    -- * Order
    , Order
    , order
    , o1Status
    , o1MerchantId
    , o1Refunds
    , o1Kind
    , o1LineItems
    , o1Shipments
    , o1NetAmount
    , o1PlacedDate
    , o1DeliveryDetails
    , o1ShippingOption
    , o1MerchantOrderId
    , o1Acknowledged
    , o1ShippingCostTax
    , o1Customer
    , o1BillingAddress
    , o1Id
    , o1Promotions
    , o1ChannelType
    , o1PaymentStatus
    , o1ShippingCost

    -- * OrderLineItemProduct
    , OrderLineItemProduct
    , orderLineItemProduct
    , olipImageLink
    , olipShownImage
    , olipFees
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

    -- * AccounttaxCustomBatchRequestEntry
    , AccounttaxCustomBatchRequestEntry
    , accounttaxCustomBatchRequestEntry
    , acccAccountTax
    , acccMerchantId
    , acccAccountId
    , acccMethod
    , acccBatchId

    -- * DatafeedStatusError
    , DatafeedStatusError
    , datafeedStatusError
    , dseCount
    , dseCode
    , dseMessage
    , dseExamples

    -- * ProductsCustomBatchRequest
    , ProductsCustomBatchRequest
    , productsCustomBatchRequest
    , ppEntries

    -- * PosDataProviders
    , PosDataProviders
    , posDataProviders
    , pdpCountry
    , pdpPosDataProviders

    -- * PosInventory
    , PosInventory
    , posInventory
    , piStoreCode
    , piKind
    , piItemId
    , piQuantity
    , piTargetCountry
    , piGtin
    , piPrice
    , piContentLanguage
    , piTimestamp

    -- * LiaSettingsListPosDataProvidersResponse
    , LiaSettingsListPosDataProvidersResponse
    , liaSettingsListPosDataProvidersResponse
    , lslpdprKind
    , lslpdprPosDataProviders

    -- * OrderinvoicesCreateRefundInvoiceRequest
    , OrderinvoicesCreateRefundInvoiceRequest
    , orderinvoicesCreateRefundInvoiceRequest
    , ocrirRefundOnlyOption
    , ocrirInvoiceId
    , ocrirShipmentInvoices
    , ocrirOperationId
    , ocrirReturnOption

    -- * DatafeedStatus
    , DatafeedStatus
    , datafeedStatus
    , dsItemsTotal
    , dsCountry
    , dsKind
    , dsWarnings
    , dsDatafeedId
    , dsProcessingStatus
    , dsLanguage
    , dsLastUploadDate
    , dsItemsValid
    , dsErrors

    -- * DatafeedstatusesCustomBatchRequest
    , DatafeedstatusesCustomBatchRequest
    , datafeedstatusesCustomBatchRequest
    , dcbrcEntries

    -- * OrderpaymentsNotifyRefundResponse
    , OrderpaymentsNotifyRefundResponse
    , orderpaymentsNotifyRefundResponse
    , onrrKind
    , onrrExecutionStatus

    -- * OrdersInStoreRefundLineItemRequest
    , OrdersInStoreRefundLineItemRequest
    , ordersInStoreRefundLineItemRequest
    , oisrlirQuantity
    , oisrlirLineItemId
    , oisrlirReason
    , oisrlirOperationId
    , oisrlirProductId
    , oisrlirTaxAmount
    , oisrlirPriceAmount
    , oisrlirReasonText

    -- * AccountsCustomBatchRequestEntryLinkRequest
    , AccountsCustomBatchRequestEntryLinkRequest
    , accountsCustomBatchRequestEntryLinkRequest
    , acbrelrAction
    , acbrelrLinkedAccountId
    , acbrelrLinkType

    -- * ProductShippingDimension
    , ProductShippingDimension
    , productShippingDimension
    , psdValue
    , psdUnit

    -- * DatafeedsCustomBatchResponseEntry
    , DatafeedsCustomBatchResponseEntry
    , datafeedsCustomBatchResponseEntry
    , dcbrecDatafeed
    , dcbrecErrors
    , dcbrecBatchId

    -- * DatafeedstatusesListResponse
    , DatafeedstatusesListResponse
    , datafeedstatusesListResponse
    , dlrlNextPageToken
    , dlrlKind
    , dlrlResources

    -- * ProductsListResponse
    , ProductsListResponse
    , productsListResponse
    , plr1NextPageToken
    , plr1Kind
    , plr1Resources

    -- * ShipmentInvoice
    , ShipmentInvoice
    , shipmentInvoice
    , siShipmentGroupId
    , siLineItemInvoices
    , siInvoiceSummary

    -- * OrderCancellation
    , OrderCancellation
    , orderCancellation
    , ocQuantity
    , ocActor
    , ocReason
    , ocCreationDate
    , ocReasonText
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types.Product
import           Network.Google.ShoppingContent.Types.Sum

-- | Default request referring to version 'v2.1' of the Content API for Shopping. This contains the host and root path used as a starting point for constructing service requests.
shoppingContentService :: ServiceConfig
shoppingContentService
  = defaultService (ServiceId "content:v2.1")
      "www.googleapis.com"

-- | Manage your product listings and accounts for Google Shopping
contentScope :: Proxy '["https://www.googleapis.com/auth/content"]
contentScope = Proxy
