-- |
-- Module      : Gogol.AndroidPublisher.Purchases.Voidedpurchases.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.voidedpurchases.list@.
module Gogol.AndroidPublisher.Purchases.Voidedpurchases.List
    (
    -- * Constructing a Request
    AndroidPublisherPurchasesVoidedpurchasesList (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherPurchasesVoidedpurchasesList (..),
#endif
    mkAndroidPublisherPurchasesVoidedpurchasesList,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Lists the purchases that were canceled, refunded or charged-back.
--
-- Construct a default value using the 'MkAndroidPublisherPurchasesVoidedpurchasesList' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherPurchasesVoidedpurchasesList = AndroidPublisherPurchasesVoidedpurchasesList
    {
      -- | The time, in milliseconds since the Epoch, of the newest voided purchase that you want to see in the response. The value of this parameter cannot be greater than the current time and is ignored if a pagination token is set. Default value is current time. Note: This filter is applied on the time at which the record is seen as voided by our systems and not the actual voided time returned in the response.
      endTime :: Core.Maybe Core.Int64
      -- | Defines how many results the list operation should return. The default number depends on the resource collection.
    , maxResults :: Core.Maybe Core.Word32
      -- | The package name of the application for which voided purchases need to be returned (for example, \'com.some.thing\').
    , packageName :: Core.Text
      -- | Defines the index of the first element to return. This can only be used if indexed paging is enabled.
    , startIndex :: Core.Maybe Core.Word32
      -- | The time, in milliseconds since the Epoch, of the oldest voided purchase that you want to see in the response. The value of this parameter cannot be older than 30 days and is ignored if a pagination token is set. Default value is current time minus 30 days. Note: This filter is applied on the time at which the record is seen as voided by our systems and not the actual voided time returned in the response.
    , startTime :: Core.Maybe Core.Int64
      -- | Defines the token of the page to return, usually taken from TokenPagination. This can only be used if token paging is enabled.
    , token :: Core.Maybe Core.Text
      -- | The type of voided purchases that you want to see in the response. Possible values are: 0. Only voided in-app product purchases will be returned in the response. This is the default value. 1. Both voided in-app purchases and voided subscription purchases will be returned in the response. Note: Before requesting to receive voided subscription purchases, you must switch to use orderId in the response which uniquely identifies one-time purchases and subscriptions. Otherwise, you will receive multiple subscription orders with the same PurchaseToken, because subscription renewal orders share the same PurchaseToken.
    , type' :: Core.Maybe Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherPurchasesVoidedpurchasesList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherPurchasesVoidedpurchasesList :: Core.Text -> AndroidPublisherPurchasesVoidedpurchasesList
pattern MkAndroidPublisherPurchasesVoidedpurchasesList{packageName} =
        AndroidPublisherPurchasesVoidedpurchasesList{endTime = Core.Nothing, maxResults = Core.Nothing, packageName = packageName,
                                                     startIndex = Core.Nothing, startTime = Core.Nothing, token = Core.Nothing, type' = Core.Nothing}

{-# DEPRECATED mkAndroidPublisherPurchasesVoidedpurchasesList "Please use MkAndroidPublisherPurchasesVoidedpurchasesList instead" #-}
#endif

-- | Create 'AndroidPublisherPurchasesVoidedpurchasesList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherPurchasesVoidedpurchasesList :: Core.Text -> AndroidPublisherPurchasesVoidedpurchasesList
mkAndroidPublisherPurchasesVoidedpurchasesList packageName
  = AndroidPublisherPurchasesVoidedpurchasesList{endTime = Core.Nothing, maxResults = Core.Nothing, packageName = packageName,
                                                 startIndex = Core.Nothing, startTime = Core.Nothing, token = Core.Nothing, type' = Core.Nothing}
instance Core.GoogleRequest AndroidPublisherPurchasesVoidedpurchasesList where
        type Core.Scopes AndroidPublisherPurchasesVoidedpurchasesList = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherPurchasesVoidedpurchasesList = AndroidPublisherService
        type Core.Response AndroidPublisherPurchasesVoidedpurchasesList = VoidedPurchasesListResponse
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}}
          AndroidPublisherPurchasesVoidedpurchasesList{..}
          = serviceRequest{Core.method = "GET",
                           Core.path =
                             Core.toRequestPath ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/purchases/voidedpurchases"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("endTime",) Core.. Core.toQueryParam Core.<$> endTime,
                                  ("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("maxResults",) Core.. Core.toQueryParam Core.<$> maxResults, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  ("startIndex",) Core.. Core.toQueryParam Core.<$> startIndex, ("startTime",) Core.. Core.toQueryParam Core.<$> startTime,
                                  ("token",) Core.. Core.toQueryParam Core.<$> token, ("type",) Core.. Core.toQueryParam Core.<$> type',
                                  Core.Just ("alt", "json")]}
