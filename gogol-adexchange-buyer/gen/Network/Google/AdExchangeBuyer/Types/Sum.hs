{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchangeBuyer.Types.Sum where

import           Network.Google.Prelude

-- | The proposed action to take on the order.
data MarketplaceOrdersUpdateUpdateAction
    = Accept
      -- ^ @accept@
    | Cancel
      -- ^ @cancel@
    | Propose
      -- ^ @propose@
    | UnknownAction
      -- ^ @unknownAction@
    | UpdateFinalized
      -- ^ @updateFinalized@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MarketplaceOrdersUpdateUpdateAction

instance FromText MarketplaceOrdersUpdateUpdateAction where
    fromText = \case
        "accept" -> Just Accept
        "cancel" -> Just Cancel
        "propose" -> Just Propose
        "unknownAction" -> Just UnknownAction
        "updateFinalized" -> Just UpdateFinalized
        _ -> Nothing

instance ToText MarketplaceOrdersUpdateUpdateAction where
    toText = \case
        Accept -> "accept"
        Cancel -> "cancel"
        Propose -> "propose"
        UnknownAction -> "unknownAction"
        UpdateFinalized -> "updateFinalized"

instance FromJSON MarketplaceOrdersUpdateUpdateAction where
    parseJSON = parseJSONText "MarketplaceOrdersUpdateUpdateAction"

instance ToJSON MarketplaceOrdersUpdateUpdateAction where
    toJSON = toJSONText

-- | The proposed action to take on the order.
data MarketplaceOrdersPatchUpdateAction
    = MOPUAAccept
      -- ^ @accept@
    | MOPUACancel
      -- ^ @cancel@
    | MOPUAPropose
      -- ^ @propose@
    | MOPUAUnknownAction
      -- ^ @unknownAction@
    | MOPUAUpdateFinalized
      -- ^ @updateFinalized@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MarketplaceOrdersPatchUpdateAction

instance FromText MarketplaceOrdersPatchUpdateAction where
    fromText = \case
        "accept" -> Just MOPUAAccept
        "cancel" -> Just MOPUACancel
        "propose" -> Just MOPUAPropose
        "unknownAction" -> Just MOPUAUnknownAction
        "updateFinalized" -> Just MOPUAUpdateFinalized
        _ -> Nothing

instance ToText MarketplaceOrdersPatchUpdateAction where
    toText = \case
        MOPUAAccept -> "accept"
        MOPUACancel -> "cancel"
        MOPUAPropose -> "propose"
        MOPUAUnknownAction -> "unknownAction"
        MOPUAUpdateFinalized -> "updateFinalized"

instance FromJSON MarketplaceOrdersPatchUpdateAction where
    parseJSON = parseJSONText "MarketplaceOrdersPatchUpdateAction"

instance ToJSON MarketplaceOrdersPatchUpdateAction where
    toJSON = toJSONText

-- | When specified, only creatives having the given open auction status are
-- returned.
data CreativesListOpenAuctionStatusFilter
    = Approved
      -- ^ @approved@
      -- Creatives which have been approved for serving on the open auction.
    | ConditionallyApproved
      -- ^ @conditionally_approved@
      -- Creatives which have been conditionally approved for serving on the open
      -- auction.
    | DisApproved
      -- ^ @disapproved@
      -- Creatives which have been disapproved for serving on the open auction.
    | NotChecked
      -- ^ @not_checked@
      -- Creatives whose open auction status is not yet checked.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativesListOpenAuctionStatusFilter

instance FromText CreativesListOpenAuctionStatusFilter where
    fromText = \case
        "approved" -> Just Approved
        "conditionally_approved" -> Just ConditionallyApproved
        "disapproved" -> Just DisApproved
        "not_checked" -> Just NotChecked
        _ -> Nothing

instance ToText CreativesListOpenAuctionStatusFilter where
    toText = \case
        Approved -> "approved"
        ConditionallyApproved -> "conditionally_approved"
        DisApproved -> "disapproved"
        NotChecked -> "not_checked"

instance FromJSON CreativesListOpenAuctionStatusFilter where
    parseJSON = parseJSONText "CreativesListOpenAuctionStatusFilter"

instance ToJSON CreativesListOpenAuctionStatusFilter where
    toJSON = toJSONText

-- | When specified, only creatives having the given direct deals status are
-- returned.
data CreativesListDealsStatusFilter
    = CLDSFApproved
      -- ^ @approved@
      -- Creatives which have been approved for serving on direct deals.
    | CLDSFConditionallyApproved
      -- ^ @conditionally_approved@
      -- Creatives which have been conditionally approved for serving on direct
      -- deals.
    | CLDSFDisApproved
      -- ^ @disapproved@
      -- Creatives which have been disapproved for serving on direct deals.
    | CLDSFNotChecked
      -- ^ @not_checked@
      -- Creatives whose direct deals status is not yet checked.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativesListDealsStatusFilter

instance FromText CreativesListDealsStatusFilter where
    fromText = \case
        "approved" -> Just CLDSFApproved
        "conditionally_approved" -> Just CLDSFConditionallyApproved
        "disapproved" -> Just CLDSFDisApproved
        "not_checked" -> Just CLDSFNotChecked
        _ -> Nothing

instance ToText CreativesListDealsStatusFilter where
    toText = \case
        CLDSFApproved -> "approved"
        CLDSFConditionallyApproved -> "conditionally_approved"
        CLDSFDisApproved -> "disapproved"
        CLDSFNotChecked -> "not_checked"

instance FromJSON CreativesListDealsStatusFilter where
    parseJSON = parseJSONText "CreativesListDealsStatusFilter"

instance ToJSON CreativesListDealsStatusFilter where
    toJSON = toJSONText
