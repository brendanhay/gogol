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
-- Module      : Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.BatchUpdate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces the entire firewall ruleset in one bulk operation. This
-- overrides and replaces the rules of an existing firewall with the new
-- rules.If the final rule does not match traffic with the \'*\' wildcard
-- IP range, then an \"allow all\" rule is explicitly added to the end of
-- the list.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.firewall.ingressRules.batchUpdate@.
module Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.BatchUpdate
    (
    -- * REST Resource
      AppsFirewallIngressRulesBatchUpdateResource

    -- * Creating a Request
    , appsFirewallIngressRulesBatchUpdate
    , AppsFirewallIngressRulesBatchUpdate

    -- * Request Lenses
    , afirbuXgafv
    , afirbuUploadProtocol
    , afirbuAccessToken
    , afirbuUploadType
    , afirbuPayload
    , afirbuAppsId
    , afirbuCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.firewall.ingressRules.batchUpdate@ method which the
-- 'AppsFirewallIngressRulesBatchUpdate' request conforms to.
type AppsFirewallIngressRulesBatchUpdateResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "firewall" :>
             "ingressRules:batchUpdate" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] BatchUpdateIngressRulesRequest :>
                             Post '[JSON] BatchUpdateIngressRulesResponse

-- | Replaces the entire firewall ruleset in one bulk operation. This
-- overrides and replaces the rules of an existing firewall with the new
-- rules.If the final rule does not match traffic with the \'*\' wildcard
-- IP range, then an \"allow all\" rule is explicitly added to the end of
-- the list.
--
-- /See:/ 'appsFirewallIngressRulesBatchUpdate' smart constructor.
data AppsFirewallIngressRulesBatchUpdate =
  AppsFirewallIngressRulesBatchUpdate'
    { _afirbuXgafv :: !(Maybe Xgafv)
    , _afirbuUploadProtocol :: !(Maybe Text)
    , _afirbuAccessToken :: !(Maybe Text)
    , _afirbuUploadType :: !(Maybe Text)
    , _afirbuPayload :: !BatchUpdateIngressRulesRequest
    , _afirbuAppsId :: !Text
    , _afirbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsFirewallIngressRulesBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afirbuXgafv'
--
-- * 'afirbuUploadProtocol'
--
-- * 'afirbuAccessToken'
--
-- * 'afirbuUploadType'
--
-- * 'afirbuPayload'
--
-- * 'afirbuAppsId'
--
-- * 'afirbuCallback'
appsFirewallIngressRulesBatchUpdate
    :: BatchUpdateIngressRulesRequest -- ^ 'afirbuPayload'
    -> Text -- ^ 'afirbuAppsId'
    -> AppsFirewallIngressRulesBatchUpdate
appsFirewallIngressRulesBatchUpdate pAfirbuPayload_ pAfirbuAppsId_ =
  AppsFirewallIngressRulesBatchUpdate'
    { _afirbuXgafv = Nothing
    , _afirbuUploadProtocol = Nothing
    , _afirbuAccessToken = Nothing
    , _afirbuUploadType = Nothing
    , _afirbuPayload = pAfirbuPayload_
    , _afirbuAppsId = pAfirbuAppsId_
    , _afirbuCallback = Nothing
    }


-- | V1 error format.
afirbuXgafv :: Lens' AppsFirewallIngressRulesBatchUpdate (Maybe Xgafv)
afirbuXgafv
  = lens _afirbuXgafv (\ s a -> s{_afirbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
afirbuUploadProtocol :: Lens' AppsFirewallIngressRulesBatchUpdate (Maybe Text)
afirbuUploadProtocol
  = lens _afirbuUploadProtocol
      (\ s a -> s{_afirbuUploadProtocol = a})

-- | OAuth access token.
afirbuAccessToken :: Lens' AppsFirewallIngressRulesBatchUpdate (Maybe Text)
afirbuAccessToken
  = lens _afirbuAccessToken
      (\ s a -> s{_afirbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
afirbuUploadType :: Lens' AppsFirewallIngressRulesBatchUpdate (Maybe Text)
afirbuUploadType
  = lens _afirbuUploadType
      (\ s a -> s{_afirbuUploadType = a})

-- | Multipart request metadata.
afirbuPayload :: Lens' AppsFirewallIngressRulesBatchUpdate BatchUpdateIngressRulesRequest
afirbuPayload
  = lens _afirbuPayload
      (\ s a -> s{_afirbuPayload = a})

-- | Part of \`name\`. Name of the Firewall collection to set. Example:
-- apps\/myapp\/firewall\/ingressRules.
afirbuAppsId :: Lens' AppsFirewallIngressRulesBatchUpdate Text
afirbuAppsId
  = lens _afirbuAppsId (\ s a -> s{_afirbuAppsId = a})

-- | JSONP
afirbuCallback :: Lens' AppsFirewallIngressRulesBatchUpdate (Maybe Text)
afirbuCallback
  = lens _afirbuCallback
      (\ s a -> s{_afirbuCallback = a})

instance GoogleRequest
           AppsFirewallIngressRulesBatchUpdate
         where
        type Rs AppsFirewallIngressRulesBatchUpdate =
             BatchUpdateIngressRulesResponse
        type Scopes AppsFirewallIngressRulesBatchUpdate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AppsFirewallIngressRulesBatchUpdate'{..}
          = go _afirbuAppsId _afirbuXgafv _afirbuUploadProtocol
              _afirbuAccessToken
              _afirbuUploadType
              _afirbuCallback
              (Just AltJSON)
              _afirbuPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AppsFirewallIngressRulesBatchUpdateResource)
                      mempty
