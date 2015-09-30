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
data AdexchangebuyerMarketplaceordersUpdateUpdateAction
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

instance Hashable AdexchangebuyerMarketplaceordersUpdateUpdateAction

instance FromText AdexchangebuyerMarketplaceordersUpdateUpdateAction where
    fromText = \case
        "accept" -> Just Accept
        "cancel" -> Just Cancel
        "propose" -> Just Propose
        "unknownAction" -> Just UnknownAction
        "updateFinalized" -> Just UpdateFinalized
        _ -> Nothing

instance ToText AdexchangebuyerMarketplaceordersUpdateUpdateAction where
    toText = \case
        Accept -> "accept"
        Cancel -> "cancel"
        Propose -> "propose"
        UnknownAction -> "unknownAction"
        UpdateFinalized -> "updateFinalized"

instance FromJSON AdexchangebuyerMarketplaceordersUpdateUpdateAction where
    parseJSON = parseJSONText "AdexchangebuyerMarketplaceordersUpdateUpdateAction"

instance ToJSON AdexchangebuyerMarketplaceordersUpdateUpdateAction where
    toJSON = toJSONText

-- | When specified, only creatives having the given open auction status are
-- returned.
data AdexchangebuyerCreativesListOpenAuctionStatusFilter
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

instance Hashable AdexchangebuyerCreativesListOpenAuctionStatusFilter

instance FromText AdexchangebuyerCreativesListOpenAuctionStatusFilter where
    fromText = \case
        "approved" -> Just Approved
        "conditionally_approved" -> Just ConditionallyApproved
        "disapproved" -> Just Disapproved
        "not_checked" -> Just NotChecked
        _ -> Nothing

instance ToText AdexchangebuyerCreativesListOpenAuctionStatusFilter where
    toText = \case
        Approved -> "approved"
        ConditionallyApproved -> "conditionally_approved"
        Disapproved -> "disapproved"
        NotChecked -> "not_checked"

instance FromJSON AdexchangebuyerCreativesListOpenAuctionStatusFilter where
    parseJSON = parseJSONText "AdexchangebuyerCreativesListOpenAuctionStatusFilter"

instance ToJSON AdexchangebuyerCreativesListOpenAuctionStatusFilter where
    toJSON = toJSONText

-- | The proposed action to take on the order.
data AdexchangebuyerMarketplaceordersPatchUpdateAction
    = AMPUAAccept
      -- ^ @accept@
    | AMPUACancel
      -- ^ @cancel@
    | AMPUAPropose
      -- ^ @propose@
    | AMPUAUnknownAction
      -- ^ @unknownAction@
    | AMPUAUpdateFinalized
      -- ^ @updateFinalized@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdexchangebuyerMarketplaceordersPatchUpdateAction

instance FromText AdexchangebuyerMarketplaceordersPatchUpdateAction where
    fromText = \case
        "accept" -> Just AMPUAAccept
        "cancel" -> Just AMPUACancel
        "propose" -> Just AMPUAPropose
        "unknownAction" -> Just AMPUAUnknownAction
        "updateFinalized" -> Just AMPUAUpdateFinalized
        _ -> Nothing

instance ToText AdexchangebuyerMarketplaceordersPatchUpdateAction where
    toText = \case
        AMPUAAccept -> "accept"
        AMPUACancel -> "cancel"
        AMPUAPropose -> "propose"
        AMPUAUnknownAction -> "unknownAction"
        AMPUAUpdateFinalized -> "updateFinalized"

instance FromJSON AdexchangebuyerMarketplaceordersPatchUpdateAction where
    parseJSON = parseJSONText "AdexchangebuyerMarketplaceordersPatchUpdateAction"

instance ToJSON AdexchangebuyerMarketplaceordersPatchUpdateAction where
    toJSON = toJSONText

-- | When specified, only creatives having the given direct deals status are
-- returned.
data AdexchangebuyerCreativesListDealsStatusFilter
    = ACLDSFApproved
      -- ^ @approved@
      -- Creatives which have been approved for serving on direct deals.
    | ACLDSFConditionallyApproved
      -- ^ @conditionally_approved@
      -- Creatives which have been conditionally approved for serving on direct
      -- deals.
    | ACLDSFDisapproved
      -- ^ @disapproved@
      -- Creatives which have been disapproved for serving on direct deals.
    | ACLDSFNotChecked
      -- ^ @not_checked@
      -- Creatives whose direct deals status is not yet checked.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdexchangebuyerCreativesListDealsStatusFilter

instance FromText AdexchangebuyerCreativesListDealsStatusFilter where
    fromText = \case
        "approved" -> Just ACLDSFApproved
        "conditionally_approved" -> Just ACLDSFConditionallyApproved
        "disapproved" -> Just ACLDSFDisapproved
        "not_checked" -> Just ACLDSFNotChecked
        _ -> Nothing

instance ToText AdexchangebuyerCreativesListDealsStatusFilter where
    toText = \case
        ACLDSFApproved -> "approved"
        ACLDSFConditionallyApproved -> "conditionally_approved"
        ACLDSFDisapproved -> "disapproved"
        ACLDSFNotChecked -> "not_checked"

instance FromJSON AdexchangebuyerCreativesListDealsStatusFilter where
    parseJSON = parseJSONText "AdexchangebuyerCreativesListDealsStatusFilter"

instance ToJSON AdexchangebuyerCreativesListDealsStatusFilter where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText
