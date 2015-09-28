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
data MarketplaceordersPatch'UpdateAction
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

instance Hashable MarketplaceordersPatch'UpdateAction

instance FromText MarketplaceordersPatch'UpdateAction where
    fromText = \case
        "accept" -> Just Accept
        "cancel" -> Just Cancel
        "propose" -> Just Propose
        "unknownAction" -> Just UnknownAction
        "updateFinalized" -> Just UpdateFinalized
        _ -> Nothing

instance ToText MarketplaceordersPatch'UpdateAction where
    toText = \case
        Accept -> "accept"
        Cancel -> "cancel"
        Propose -> "propose"
        UnknownAction -> "unknownAction"
        UpdateFinalized -> "updateFinalized"

instance FromJSON MarketplaceordersPatch'UpdateAction where
    parseJSON = parseJSONText "MarketplaceordersPatch'UpdateAction"

instance ToJSON MarketplaceordersPatch'UpdateAction where
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

-- | When specified, only creatives having the given direct deals status are
-- returned.
data CreativesList'DealsStatusFilter
    = Approved
      -- ^ @approved@
      -- Creatives which have been approved for serving on direct deals.
    | ConditionallyApproved
      -- ^ @conditionally_approved@
      -- Creatives which have been conditionally approved for serving on direct
      -- deals.
    | Disapproved
      -- ^ @disapproved@
      -- Creatives which have been disapproved for serving on direct deals.
    | NotChecked
      -- ^ @not_checked@
      -- Creatives whose direct deals status is not yet checked.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativesList'DealsStatusFilter

instance FromText CreativesList'DealsStatusFilter where
    fromText = \case
        "approved" -> Just Approved
        "conditionally_approved" -> Just ConditionallyApproved
        "disapproved" -> Just Disapproved
        "not_checked" -> Just NotChecked
        _ -> Nothing

instance ToText CreativesList'DealsStatusFilter where
    toText = \case
        Approved -> "approved"
        ConditionallyApproved -> "conditionally_approved"
        Disapproved -> "disapproved"
        NotChecked -> "not_checked"

instance FromJSON CreativesList'DealsStatusFilter where
    parseJSON = parseJSONText "CreativesList'DealsStatusFilter"

instance ToJSON CreativesList'DealsStatusFilter where
    toJSON = toJSONText

-- | The proposed action to take on the order.
data MarketplaceordersUpdate'UpdateAction
    = MUUAAccept
      -- ^ @accept@
    | MUUACancel
      -- ^ @cancel@
    | MUUAPropose
      -- ^ @propose@
    | MUUAUnknownAction
      -- ^ @unknownAction@
    | MUUAUpdateFinalized
      -- ^ @updateFinalized@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MarketplaceordersUpdate'UpdateAction

instance FromText MarketplaceordersUpdate'UpdateAction where
    fromText = \case
        "accept" -> Just MUUAAccept
        "cancel" -> Just MUUACancel
        "propose" -> Just MUUAPropose
        "unknownAction" -> Just MUUAUnknownAction
        "updateFinalized" -> Just MUUAUpdateFinalized
        _ -> Nothing

instance ToText MarketplaceordersUpdate'UpdateAction where
    toText = \case
        MUUAAccept -> "accept"
        MUUACancel -> "cancel"
        MUUAPropose -> "propose"
        MUUAUnknownAction -> "unknownAction"
        MUUAUpdateFinalized -> "updateFinalized"

instance FromJSON MarketplaceordersUpdate'UpdateAction where
    parseJSON = parseJSONText "MarketplaceordersUpdate'UpdateAction"

instance ToJSON MarketplaceordersUpdate'UpdateAction where
    toJSON = toJSONText

-- | When specified, only creatives having the given open auction status are
-- returned.
data CreativesList'OpenAuctionStatusFilter
    = CLOASFApproved
      -- ^ @approved@
      -- Creatives which have been approved for serving on the open auction.
    | CLOASFConditionallyApproved
      -- ^ @conditionally_approved@
      -- Creatives which have been conditionally approved for serving on the open
      -- auction.
    | CLOASFDisapproved
      -- ^ @disapproved@
      -- Creatives which have been disapproved for serving on the open auction.
    | CLOASFNotChecked
      -- ^ @not_checked@
      -- Creatives whose open auction status is not yet checked.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativesList'OpenAuctionStatusFilter

instance FromText CreativesList'OpenAuctionStatusFilter where
    fromText = \case
        "approved" -> Just CLOASFApproved
        "conditionally_approved" -> Just CLOASFConditionallyApproved
        "disapproved" -> Just CLOASFDisapproved
        "not_checked" -> Just CLOASFNotChecked
        _ -> Nothing

instance ToText CreativesList'OpenAuctionStatusFilter where
    toText = \case
        CLOASFApproved -> "approved"
        CLOASFConditionallyApproved -> "conditionally_approved"
        CLOASFDisapproved -> "disapproved"
        CLOASFNotChecked -> "not_checked"

instance FromJSON CreativesList'OpenAuctionStatusFilter where
    parseJSON = parseJSONText "CreativesList'OpenAuctionStatusFilter"

instance ToJSON CreativesList'OpenAuctionStatusFilter where
    toJSON = toJSONText
