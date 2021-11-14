{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the firewall rules of an application.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.firewall.ingressRules.list@.
module Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.List
    (
    -- * REST Resource
      AppsFirewallIngressRulesListResource

    -- * Creating a Request
    , appsFirewallIngressRulesList
    , AppsFirewallIngressRulesList

    -- * Request Lenses
    , afirlXgafv
    , afirlUploadProtocol
    , afirlMatchingAddress
    , afirlAccessToken
    , afirlUploadType
    , afirlAppsId
    , afirlPageToken
    , afirlPageSize
    , afirlCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.firewall.ingressRules.list@ method which the
-- 'AppsFirewallIngressRulesList' request conforms to.
type AppsFirewallIngressRulesListResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "firewall" :>
             "ingressRules" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "matchingAddress" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListIngressRulesResponse

-- | Lists the firewall rules of an application.
--
-- /See:/ 'appsFirewallIngressRulesList' smart constructor.
data AppsFirewallIngressRulesList =
  AppsFirewallIngressRulesList'
    { _afirlXgafv :: !(Maybe Xgafv)
    , _afirlUploadProtocol :: !(Maybe Text)
    , _afirlMatchingAddress :: !(Maybe Text)
    , _afirlAccessToken :: !(Maybe Text)
    , _afirlUploadType :: !(Maybe Text)
    , _afirlAppsId :: !Text
    , _afirlPageToken :: !(Maybe Text)
    , _afirlPageSize :: !(Maybe (Textual Int32))
    , _afirlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsFirewallIngressRulesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afirlXgafv'
--
-- * 'afirlUploadProtocol'
--
-- * 'afirlMatchingAddress'
--
-- * 'afirlAccessToken'
--
-- * 'afirlUploadType'
--
-- * 'afirlAppsId'
--
-- * 'afirlPageToken'
--
-- * 'afirlPageSize'
--
-- * 'afirlCallback'
appsFirewallIngressRulesList
    :: Text -- ^ 'afirlAppsId'
    -> AppsFirewallIngressRulesList
appsFirewallIngressRulesList pAfirlAppsId_ =
  AppsFirewallIngressRulesList'
    { _afirlXgafv = Nothing
    , _afirlUploadProtocol = Nothing
    , _afirlMatchingAddress = Nothing
    , _afirlAccessToken = Nothing
    , _afirlUploadType = Nothing
    , _afirlAppsId = pAfirlAppsId_
    , _afirlPageToken = Nothing
    , _afirlPageSize = Nothing
    , _afirlCallback = Nothing
    }


-- | V1 error format.
afirlXgafv :: Lens' AppsFirewallIngressRulesList (Maybe Xgafv)
afirlXgafv
  = lens _afirlXgafv (\ s a -> s{_afirlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
afirlUploadProtocol :: Lens' AppsFirewallIngressRulesList (Maybe Text)
afirlUploadProtocol
  = lens _afirlUploadProtocol
      (\ s a -> s{_afirlUploadProtocol = a})

-- | A valid IP Address. If set, only rules matching this address will be
-- returned. The first returned rule will be the rule that fires on
-- requests from this IP.
afirlMatchingAddress :: Lens' AppsFirewallIngressRulesList (Maybe Text)
afirlMatchingAddress
  = lens _afirlMatchingAddress
      (\ s a -> s{_afirlMatchingAddress = a})

-- | OAuth access token.
afirlAccessToken :: Lens' AppsFirewallIngressRulesList (Maybe Text)
afirlAccessToken
  = lens _afirlAccessToken
      (\ s a -> s{_afirlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
afirlUploadType :: Lens' AppsFirewallIngressRulesList (Maybe Text)
afirlUploadType
  = lens _afirlUploadType
      (\ s a -> s{_afirlUploadType = a})

-- | Part of \`parent\`. Name of the Firewall collection to retrieve.
-- Example: apps\/myapp\/firewall\/ingressRules.
afirlAppsId :: Lens' AppsFirewallIngressRulesList Text
afirlAppsId
  = lens _afirlAppsId (\ s a -> s{_afirlAppsId = a})

-- | Continuation token for fetching the next page of results.
afirlPageToken :: Lens' AppsFirewallIngressRulesList (Maybe Text)
afirlPageToken
  = lens _afirlPageToken
      (\ s a -> s{_afirlPageToken = a})

-- | Maximum results to return per page.
afirlPageSize :: Lens' AppsFirewallIngressRulesList (Maybe Int32)
afirlPageSize
  = lens _afirlPageSize
      (\ s a -> s{_afirlPageSize = a})
      . mapping _Coerce

-- | JSONP
afirlCallback :: Lens' AppsFirewallIngressRulesList (Maybe Text)
afirlCallback
  = lens _afirlCallback
      (\ s a -> s{_afirlCallback = a})

instance GoogleRequest AppsFirewallIngressRulesList
         where
        type Rs AppsFirewallIngressRulesList =
             ListIngressRulesResponse
        type Scopes AppsFirewallIngressRulesList =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsFirewallIngressRulesList'{..}
          = go _afirlAppsId _afirlXgafv _afirlUploadProtocol
              _afirlMatchingAddress
              _afirlAccessToken
              _afirlUploadType
              _afirlPageToken
              _afirlPageSize
              _afirlCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsFirewallIngressRulesListResource)
                      mempty
