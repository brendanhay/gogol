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
data UpdateAction
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

instance Hashable UpdateAction

instance FromText UpdateAction where
    fromText = \case
        "accept" -> Just Accept
        "cancel" -> Just Cancel
        "propose" -> Just Propose
        "unknownAction" -> Just UnknownAction
        "updateFinalized" -> Just UpdateFinalized
        _ -> Nothing

instance ToText UpdateAction where
    toText = \case
        Accept -> "accept"
        Cancel -> "cancel"
        Propose -> "propose"
        UnknownAction -> "unknownAction"
        UpdateFinalized -> "updateFinalized"

instance FromJSON UpdateAction where
    parseJSON = parseJSONText "UpdateAction"

instance ToJSON UpdateAction where
    toJSON = toJSONText

-- | When specified, only creatives having the given open auction status are
-- returned.
data OpenAuctionStatusFilter
    = Approved
      -- ^ @approved@
      -- Creatives which have been approved for serving on the open auction.
    | ConditionallyApproved
      -- ^ @conditionally_approved@
      -- Creatives which have been conditionally approved for serving on the open
      -- auction.
    | Disapproved
      -- ^ @disapproved@
      -- Creatives which have been disapproved for serving on the open auction.
    | NotChecked
      -- ^ @not_checked@
      -- Creatives whose open auction status is not yet checked.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OpenAuctionStatusFilter

instance FromText OpenAuctionStatusFilter where
    fromText = \case
        "approved" -> Just Approved
        "conditionally_approved" -> Just ConditionallyApproved
        "disapproved" -> Just Disapproved
        "not_checked" -> Just NotChecked
        _ -> Nothing

instance ToText OpenAuctionStatusFilter where
    toText = \case
        Approved -> "approved"
        ConditionallyApproved -> "conditionally_approved"
        Disapproved -> "disapproved"
        NotChecked -> "not_checked"

instance FromJSON OpenAuctionStatusFilter where
    parseJSON = parseJSONText "OpenAuctionStatusFilter"

instance ToJSON OpenAuctionStatusFilter where
    toJSON = toJSONText

-- | The proposed action to take on the order.
data AdexchangebuyerMarketplaceOrdersUpdateUpdateAction
    = AMOUUAAccept
      -- ^ @accept@
    | AMOUUACancel
      -- ^ @cancel@
    | AMOUUAPropose
      -- ^ @propose@
    | AMOUUAUnknownAction
      -- ^ @unknownAction@
    | AMOUUAUpdateFinalized
      -- ^ @updateFinalized@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdexchangebuyerMarketplaceOrdersUpdateUpdateAction

instance FromText AdexchangebuyerMarketplaceOrdersUpdateUpdateAction where
    fromText = \case
        "accept" -> Just AMOUUAAccept
        "cancel" -> Just AMOUUACancel
        "propose" -> Just AMOUUAPropose
        "unknownAction" -> Just AMOUUAUnknownAction
        "updateFinalized" -> Just AMOUUAUpdateFinalized
        _ -> Nothing

instance ToText AdexchangebuyerMarketplaceOrdersUpdateUpdateAction where
    toText = \case
        AMOUUAAccept -> "accept"
        AMOUUACancel -> "cancel"
        AMOUUAPropose -> "propose"
        AMOUUAUnknownAction -> "unknownAction"
        AMOUUAUpdateFinalized -> "updateFinalized"

instance FromJSON AdexchangebuyerMarketplaceOrdersUpdateUpdateAction where
    parseJSON = parseJSONText "AdexchangebuyerMarketplaceOrdersUpdateUpdateAction"

instance ToJSON AdexchangebuyerMarketplaceOrdersUpdateUpdateAction where
    toJSON = toJSONText

-- | When specified, only creatives having the given direct deals status are
-- returned.
data DealsStatusFilter
    = DSFApproved
      -- ^ @approved@
      -- Creatives which have been approved for serving on direct deals.
    | DSFConditionallyApproved
      -- ^ @conditionally_approved@
      -- Creatives which have been conditionally approved for serving on direct
      -- deals.
    | DSFDisapproved
      -- ^ @disapproved@
      -- Creatives which have been disapproved for serving on direct deals.
    | DSFNotChecked
      -- ^ @not_checked@
      -- Creatives whose direct deals status is not yet checked.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DealsStatusFilter

instance FromText DealsStatusFilter where
    fromText = \case
        "approved" -> Just DSFApproved
        "conditionally_approved" -> Just DSFConditionallyApproved
        "disapproved" -> Just DSFDisapproved
        "not_checked" -> Just DSFNotChecked
        _ -> Nothing

instance ToText DealsStatusFilter where
    toText = \case
        DSFApproved -> "approved"
        DSFConditionallyApproved -> "conditionally_approved"
        DSFDisapproved -> "disapproved"
        DSFNotChecked -> "not_checked"

instance FromJSON DealsStatusFilter where
    parseJSON = parseJSONText "DealsStatusFilter"

instance ToJSON DealsStatusFilter where
    toJSON = toJSONText
