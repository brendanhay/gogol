{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsReseller.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AppsReseller.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Customer_CustomerType
    Customer_CustomerType
      (
        Customer_CustomerType_CustomerTypeUnspecified,
        Customer_CustomerType_Domain,
        Customer_CustomerType_Team,
        ..
      ),

    -- * SubscriptionsDeleteDeletionType
    SubscriptionsDeleteDeletionType
      (
        SubscriptionsDeleteDeletionType_DeletionTypeUndefined,
        SubscriptionsDeleteDeletionType_Cancel,
        SubscriptionsDeleteDeletionType_TransferToDirect,
        ..
      ),

    -- * SubscriptionsInsertAction
    SubscriptionsInsertAction
      (
        SubscriptionsInsertAction_ActionUnspecified,
        SubscriptionsInsertAction_Buy,
        SubscriptionsInsertAction_Switch,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | Identifies the type of the customer. Acceptable values include: * @domain@: Implies a domain-verified customer (default). * @team@: Implies an email-verified customer. For more information, see <https://support.google.com/a/users/answer/9939479 managed teams>.
newtype Customer_CustomerType = Customer_CustomerType { fromCustomer_CustomerType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Customer type not known
pattern Customer_CustomerType_CustomerTypeUnspecified :: Customer_CustomerType
pattern Customer_CustomerType_CustomerTypeUnspecified = Customer_CustomerType "customerTypeUnspecified"

-- | Domained or domain-owning customers
pattern Customer_CustomerType_Domain :: Customer_CustomerType
pattern Customer_CustomerType_Domain = Customer_CustomerType "domain"

-- | Domainless or email-verified customers
pattern Customer_CustomerType_Team :: Customer_CustomerType
pattern Customer_CustomerType_Team = Customer_CustomerType "team"

{-# COMPLETE
  Customer_CustomerType_CustomerTypeUnspecified,
  Customer_CustomerType_Domain,
  Customer_CustomerType_Team,
  Customer_CustomerType #-}

-- | The @deletionType@ query string enables the cancellation, downgrade, or suspension of a subscription.
newtype SubscriptionsDeleteDeletionType = SubscriptionsDeleteDeletionType { fromSubscriptionsDeleteDeletionType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern SubscriptionsDeleteDeletionType_DeletionTypeUndefined :: SubscriptionsDeleteDeletionType
pattern SubscriptionsDeleteDeletionType_DeletionTypeUndefined = SubscriptionsDeleteDeletionType "deletion_type_undefined"

-- | Cancels the subscription immediately. This does not apply to a G Suite subscription.
pattern SubscriptionsDeleteDeletionType_Cancel :: SubscriptionsDeleteDeletionType
pattern SubscriptionsDeleteDeletionType_Cancel = SubscriptionsDeleteDeletionType "cancel"

-- | Transfers a subscription directly to Google. The customer is immediately transferred to a direct billing relationship with Google and is given a short amount of time with no service interruption. The customer can then choose to set up billing directly with Google by using a credit card, or they can transfer to another reseller.
pattern SubscriptionsDeleteDeletionType_TransferToDirect :: SubscriptionsDeleteDeletionType
pattern SubscriptionsDeleteDeletionType_TransferToDirect = SubscriptionsDeleteDeletionType "transfer_to_direct"

{-# COMPLETE
  SubscriptionsDeleteDeletionType_DeletionTypeUndefined,
  SubscriptionsDeleteDeletionType_Cancel,
  SubscriptionsDeleteDeletionType_TransferToDirect,
  SubscriptionsDeleteDeletionType #-}

-- | The intented insert action. The usage of this field is governed by certain policies which are being developed & tested currently. Hence, these might not work as intended. Once this is fully tested & available to consume, we will share more information about its usage, limitations and policy documentation.
newtype SubscriptionsInsertAction = SubscriptionsInsertAction { fromSubscriptionsInsertAction :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Auto determines whether to create new subscription, upgrade or downagrade existing subscription or transfer the existing subscription
pattern SubscriptionsInsertAction_ActionUnspecified :: SubscriptionsInsertAction
pattern SubscriptionsInsertAction_ActionUnspecified = SubscriptionsInsertAction "actionUnspecified"

-- | Create new subscription
pattern SubscriptionsInsertAction_Buy :: SubscriptionsInsertAction
pattern SubscriptionsInsertAction_Buy = SubscriptionsInsertAction "buy"

-- | Switch existing subscription to another sku (upgrade\/downgrade)
pattern SubscriptionsInsertAction_Switch :: SubscriptionsInsertAction
pattern SubscriptionsInsertAction_Switch = SubscriptionsInsertAction "switch"

{-# COMPLETE
  SubscriptionsInsertAction_ActionUnspecified,
  SubscriptionsInsertAction_Buy,
  SubscriptionsInsertAction_Switch,
  SubscriptionsInsertAction #-}
