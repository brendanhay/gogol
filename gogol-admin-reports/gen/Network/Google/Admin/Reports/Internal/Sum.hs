{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Admin.Reports.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Admin.Reports.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ActivitiesListApplicationName
    ActivitiesListApplicationName
      ( ActivitiesListApplicationName_AccessTransparency,
        ActivitiesListApplicationName_Admin,
        ActivitiesListApplicationName_Calendar,
        ActivitiesListApplicationName_Chat,
        ActivitiesListApplicationName_Drive,
        ActivitiesListApplicationName_Gcp,
        ActivitiesListApplicationName_Gplus,
        ActivitiesListApplicationName_Groups,
        ActivitiesListApplicationName_GroupsEnterprise,
        ActivitiesListApplicationName_Jamboard,
        ActivitiesListApplicationName_Login,
        ActivitiesListApplicationName_Meet,
        ActivitiesListApplicationName_Mobile,
        ActivitiesListApplicationName_Rules,
        ActivitiesListApplicationName_Saml,
        ActivitiesListApplicationName_Token,
        ActivitiesListApplicationName_UserAccounts,
        ActivitiesListApplicationName_ContextAwareAccess,
        ActivitiesListApplicationName_Chrome,
        ActivitiesListApplicationName_DataStudio,
        ActivitiesListApplicationName_Keep,
        ..
      ),

    -- * ActivitiesWatchApplicationName
    ActivitiesWatchApplicationName
      ( ActivitiesWatchApplicationName_AccessTransparency,
        ActivitiesWatchApplicationName_Admin,
        ActivitiesWatchApplicationName_Calendar,
        ActivitiesWatchApplicationName_Chat,
        ActivitiesWatchApplicationName_Drive,
        ActivitiesWatchApplicationName_Gcp,
        ActivitiesWatchApplicationName_Gplus,
        ActivitiesWatchApplicationName_Groups,
        ActivitiesWatchApplicationName_GroupsEnterprise,
        ActivitiesWatchApplicationName_Jamboard,
        ActivitiesWatchApplicationName_Login,
        ActivitiesWatchApplicationName_Meet,
        ActivitiesWatchApplicationName_Mobile,
        ActivitiesWatchApplicationName_Rules,
        ActivitiesWatchApplicationName_Saml,
        ActivitiesWatchApplicationName_Token,
        ActivitiesWatchApplicationName_UserAccounts,
        ActivitiesWatchApplicationName_ContextAwareAccess,
        ActivitiesWatchApplicationName_Chrome,
        ActivitiesWatchApplicationName_DataStudio,
        ActivitiesWatchApplicationName_Keep,
        ..
      ),

    -- * EntityUsageReportsGetEntityType
    EntityUsageReportsGetEntityType
      ( EntityUsageReportsGetEntityType_GplusCommunities,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
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
  Xgafv
  #-}

-- | Application name for which the events are to be retrieved.
newtype ActivitiesListApplicationName = ActivitiesListApplicationName {fromActivitiesListApplicationName :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The Google Workspace Access Transparency activity reports return information about different types of Access Transparency activity events.
pattern ActivitiesListApplicationName_AccessTransparency :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_AccessTransparency = ActivitiesListApplicationName "access_transparency"

-- | The Admin console application\'s activity reports return account information about different types of administrator activity events.
pattern ActivitiesListApplicationName_Admin :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Admin = ActivitiesListApplicationName "admin"

-- | The Google Calendar application\'s activity reports return information about various Calendar activity events.
pattern ActivitiesListApplicationName_Calendar :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Calendar = ActivitiesListApplicationName "calendar"

-- | The Chat activity reports return information about various Chat activity events.
pattern ActivitiesListApplicationName_Chat :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Chat = ActivitiesListApplicationName "chat"

-- | The Google Drive application\'s activity reports return information about various Google Drive activity events. The Drive activity report is only available for Google Workspace Business and Enterprise customers.
pattern ActivitiesListApplicationName_Drive :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Drive = ActivitiesListApplicationName "drive"

-- | The Google Cloud Platform application\'s activity reports return information about various GCP activity events.
pattern ActivitiesListApplicationName_Gcp :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Gcp = ActivitiesListApplicationName "gcp"

-- | The Google+ application\'s activity reports return information about various Google+ activity events.
pattern ActivitiesListApplicationName_Gplus :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Gplus = ActivitiesListApplicationName "gplus"

-- | The Google Groups application\'s activity reports return information about various Groups activity events.
pattern ActivitiesListApplicationName_Groups :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Groups = ActivitiesListApplicationName "groups"

-- | The Enterprise Groups activity reports return information about various Enterprise group activity events.
pattern ActivitiesListApplicationName_GroupsEnterprise :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_GroupsEnterprise = ActivitiesListApplicationName "groups_enterprise"

-- | The Jamboard activity reports return information about various Jamboard activity events.
pattern ActivitiesListApplicationName_Jamboard :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Jamboard = ActivitiesListApplicationName "jamboard"

-- | The Login application\'s activity reports return account information about different types of Login activity events.
pattern ActivitiesListApplicationName_Login :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Login = ActivitiesListApplicationName "login"

-- | The Meet Audit activity report returns information about different types of Meet Audit activity events.
pattern ActivitiesListApplicationName_Meet :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Meet = ActivitiesListApplicationName "meet"

-- | The Device Audit activity report returns information about different types of Device Audit activity events.
pattern ActivitiesListApplicationName_Mobile :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Mobile = ActivitiesListApplicationName "mobile"

-- | The Rules activity report returns information about different types of Rules activity events.
pattern ActivitiesListApplicationName_Rules :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Rules = ActivitiesListApplicationName "rules"

-- | The SAML activity report returns information about different types of SAML activity events.
pattern ActivitiesListApplicationName_Saml :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Saml = ActivitiesListApplicationName "saml"

-- | The Token application\'s activity reports return account information about different types of Token activity events.
pattern ActivitiesListApplicationName_Token :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Token = ActivitiesListApplicationName "token"

-- | The User Accounts application\'s activity reports return account information about different types of User Accounts activity events.
pattern ActivitiesListApplicationName_UserAccounts :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_UserAccounts = ActivitiesListApplicationName "user_accounts"

-- | The Context-aware access activity reports return information about users\' access denied events due to Context-aware access rules.
pattern ActivitiesListApplicationName_ContextAwareAccess :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_ContextAwareAccess = ActivitiesListApplicationName "context_aware_access"

-- | The Chrome activity reports return information about Chrome browser and Chrome OS events.
pattern ActivitiesListApplicationName_Chrome :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Chrome = ActivitiesListApplicationName "chrome"

-- | The Data Studio activity reports return information about various types of Data Studio activity events.
pattern ActivitiesListApplicationName_DataStudio :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_DataStudio = ActivitiesListApplicationName "data_studio"

-- | The Keep application\'s activity reports return information about various Google Keep activity events. The Keep activity report is only available for Google Workspace Business and Enterprise customers.
pattern ActivitiesListApplicationName_Keep :: ActivitiesListApplicationName
pattern ActivitiesListApplicationName_Keep = ActivitiesListApplicationName "keep"

{-# COMPLETE
  ActivitiesListApplicationName_AccessTransparency,
  ActivitiesListApplicationName_Admin,
  ActivitiesListApplicationName_Calendar,
  ActivitiesListApplicationName_Chat,
  ActivitiesListApplicationName_Drive,
  ActivitiesListApplicationName_Gcp,
  ActivitiesListApplicationName_Gplus,
  ActivitiesListApplicationName_Groups,
  ActivitiesListApplicationName_GroupsEnterprise,
  ActivitiesListApplicationName_Jamboard,
  ActivitiesListApplicationName_Login,
  ActivitiesListApplicationName_Meet,
  ActivitiesListApplicationName_Mobile,
  ActivitiesListApplicationName_Rules,
  ActivitiesListApplicationName_Saml,
  ActivitiesListApplicationName_Token,
  ActivitiesListApplicationName_UserAccounts,
  ActivitiesListApplicationName_ContextAwareAccess,
  ActivitiesListApplicationName_Chrome,
  ActivitiesListApplicationName_DataStudio,
  ActivitiesListApplicationName_Keep,
  ActivitiesListApplicationName
  #-}

-- | Application name for which the events are to be retrieved.
newtype ActivitiesWatchApplicationName = ActivitiesWatchApplicationName {fromActivitiesWatchApplicationName :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The Google Workspace Access Transparency activity reports return information about different types of Access Transparency activity events.
pattern ActivitiesWatchApplicationName_AccessTransparency :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_AccessTransparency = ActivitiesWatchApplicationName "access_transparency"

-- | The Admin console application\'s activity reports return account information about different types of administrator activity events.
pattern ActivitiesWatchApplicationName_Admin :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Admin = ActivitiesWatchApplicationName "admin"

-- | The Google Calendar application\'s activity reports return information about various Calendar activity events.
pattern ActivitiesWatchApplicationName_Calendar :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Calendar = ActivitiesWatchApplicationName "calendar"

-- | The Chat activity reports return information about various Chat activity events.
pattern ActivitiesWatchApplicationName_Chat :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Chat = ActivitiesWatchApplicationName "chat"

-- | The Google Drive application\'s activity reports return information about various Google Drive activity events. The Drive activity report is only available for Google Workspace Business and Google Workspace Enterprise customers.
pattern ActivitiesWatchApplicationName_Drive :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Drive = ActivitiesWatchApplicationName "drive"

-- | The Google Cloud Platform application\'s activity reports return information about various GCP activity events.
pattern ActivitiesWatchApplicationName_Gcp :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Gcp = ActivitiesWatchApplicationName "gcp"

-- | The Google+ application\'s activity reports return information about various Google+ activity events.
pattern ActivitiesWatchApplicationName_Gplus :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Gplus = ActivitiesWatchApplicationName "gplus"

-- | The Google Groups application\'s activity reports return information about various Groups activity events.
pattern ActivitiesWatchApplicationName_Groups :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Groups = ActivitiesWatchApplicationName "groups"

-- | The Enterprise Groups activity reports return information about various Enterprise group activity events.
pattern ActivitiesWatchApplicationName_GroupsEnterprise :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_GroupsEnterprise = ActivitiesWatchApplicationName "groups_enterprise"

-- | The Jamboard activity reports return information about various Jamboard activity events.
pattern ActivitiesWatchApplicationName_Jamboard :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Jamboard = ActivitiesWatchApplicationName "jamboard"

-- | The Login application\'s activity reports return account information about different types of Login activity events.
pattern ActivitiesWatchApplicationName_Login :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Login = ActivitiesWatchApplicationName "login"

-- | The Meet Audit activity report returns information about different types of Meet Audit activity events.
pattern ActivitiesWatchApplicationName_Meet :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Meet = ActivitiesWatchApplicationName "meet"

-- | The Device Audit activity report returns information about different types of Device Audit activity events.
pattern ActivitiesWatchApplicationName_Mobile :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Mobile = ActivitiesWatchApplicationName "mobile"

-- | The Rules activity report returns information about different types of Rules activity events.
pattern ActivitiesWatchApplicationName_Rules :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Rules = ActivitiesWatchApplicationName "rules"

-- | The SAML activity report returns information about different types of SAML activity events.
pattern ActivitiesWatchApplicationName_Saml :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Saml = ActivitiesWatchApplicationName "saml"

-- | The Token application\'s activity reports return account information about different types of Token activity events.
pattern ActivitiesWatchApplicationName_Token :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Token = ActivitiesWatchApplicationName "token"

-- | The User Accounts application\'s activity reports return account information about different types of User Accounts activity events.
pattern ActivitiesWatchApplicationName_UserAccounts :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_UserAccounts = ActivitiesWatchApplicationName "user_accounts"

-- | The Context-aware access activity reports return information about users\' access denied events due to Context-aware access rules.
pattern ActivitiesWatchApplicationName_ContextAwareAccess :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_ContextAwareAccess = ActivitiesWatchApplicationName "context_aware_access"

-- | The Chrome activity reports return information about Chrome browser and Chrome OS events.
pattern ActivitiesWatchApplicationName_Chrome :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Chrome = ActivitiesWatchApplicationName "chrome"

-- | The Data Studio activity reports return information about various types of Data Studio activity events.
pattern ActivitiesWatchApplicationName_DataStudio :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_DataStudio = ActivitiesWatchApplicationName "data_studio"

-- | The Keep application\'s activity reports return information about various Google Keep activity events. The Keep activity report is only available for Google Workspace Business and Enterprise customers.
pattern ActivitiesWatchApplicationName_Keep :: ActivitiesWatchApplicationName
pattern ActivitiesWatchApplicationName_Keep = ActivitiesWatchApplicationName "keep"

{-# COMPLETE
  ActivitiesWatchApplicationName_AccessTransparency,
  ActivitiesWatchApplicationName_Admin,
  ActivitiesWatchApplicationName_Calendar,
  ActivitiesWatchApplicationName_Chat,
  ActivitiesWatchApplicationName_Drive,
  ActivitiesWatchApplicationName_Gcp,
  ActivitiesWatchApplicationName_Gplus,
  ActivitiesWatchApplicationName_Groups,
  ActivitiesWatchApplicationName_GroupsEnterprise,
  ActivitiesWatchApplicationName_Jamboard,
  ActivitiesWatchApplicationName_Login,
  ActivitiesWatchApplicationName_Meet,
  ActivitiesWatchApplicationName_Mobile,
  ActivitiesWatchApplicationName_Rules,
  ActivitiesWatchApplicationName_Saml,
  ActivitiesWatchApplicationName_Token,
  ActivitiesWatchApplicationName_UserAccounts,
  ActivitiesWatchApplicationName_ContextAwareAccess,
  ActivitiesWatchApplicationName_Chrome,
  ActivitiesWatchApplicationName_DataStudio,
  ActivitiesWatchApplicationName_Keep,
  ActivitiesWatchApplicationName
  #-}

-- | Represents the type of entity for the report.
newtype EntityUsageReportsGetEntityType = EntityUsageReportsGetEntityType {fromEntityUsageReportsGetEntityType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Returns a report on Google+ communities.
pattern EntityUsageReportsGetEntityType_GplusCommunities :: EntityUsageReportsGetEntityType
pattern EntityUsageReportsGetEntityType_GplusCommunities = EntityUsageReportsGetEntityType "gplus_communities"

{-# COMPLETE
  EntityUsageReportsGetEntityType_GplusCommunities,
  EntityUsageReportsGetEntityType
  #-}
