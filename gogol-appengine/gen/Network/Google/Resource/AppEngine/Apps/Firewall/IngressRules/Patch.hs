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
-- Module      : Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified firewall rule.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.firewall.ingressRules.patch@.
module Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.Patch
    (
    -- * REST Resource
      AppsFirewallIngressRulesPatchResource

    -- * Creating a Request
    , appsFirewallIngressRulesPatch
    , AppsFirewallIngressRulesPatch

    -- * Request Lenses
    , afirpXgafv
    , afirpUploadProtocol
    , afirpUpdateMask
    , afirpAccessToken
    , afirpUploadType
    , afirpPayload
    , afirpIngressRulesId
    , afirpAppsId
    , afirpCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.firewall.ingressRules.patch@ method which the
-- 'AppsFirewallIngressRulesPatch' request conforms to.
type AppsFirewallIngressRulesPatchResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "firewall" :>
             "ingressRules" :>
               Capture "ingressRulesId" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "updateMask" GFieldMask :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] FirewallRule :>
                                 Patch '[JSON] FirewallRule

-- | Updates the specified firewall rule.
--
-- /See:/ 'appsFirewallIngressRulesPatch' smart constructor.
data AppsFirewallIngressRulesPatch =
  AppsFirewallIngressRulesPatch'
    { _afirpXgafv          :: !(Maybe Xgafv)
    , _afirpUploadProtocol :: !(Maybe Text)
    , _afirpUpdateMask     :: !(Maybe GFieldMask)
    , _afirpAccessToken    :: !(Maybe Text)
    , _afirpUploadType     :: !(Maybe Text)
    , _afirpPayload        :: !FirewallRule
    , _afirpIngressRulesId :: !Text
    , _afirpAppsId         :: !Text
    , _afirpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsFirewallIngressRulesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afirpXgafv'
--
-- * 'afirpUploadProtocol'
--
-- * 'afirpUpdateMask'
--
-- * 'afirpAccessToken'
--
-- * 'afirpUploadType'
--
-- * 'afirpPayload'
--
-- * 'afirpIngressRulesId'
--
-- * 'afirpAppsId'
--
-- * 'afirpCallback'
appsFirewallIngressRulesPatch
    :: FirewallRule -- ^ 'afirpPayload'
    -> Text -- ^ 'afirpIngressRulesId'
    -> Text -- ^ 'afirpAppsId'
    -> AppsFirewallIngressRulesPatch
appsFirewallIngressRulesPatch pAfirpPayload_ pAfirpIngressRulesId_ pAfirpAppsId_ =
  AppsFirewallIngressRulesPatch'
    { _afirpXgafv = Nothing
    , _afirpUploadProtocol = Nothing
    , _afirpUpdateMask = Nothing
    , _afirpAccessToken = Nothing
    , _afirpUploadType = Nothing
    , _afirpPayload = pAfirpPayload_
    , _afirpIngressRulesId = pAfirpIngressRulesId_
    , _afirpAppsId = pAfirpAppsId_
    , _afirpCallback = Nothing
    }


-- | V1 error format.
afirpXgafv :: Lens' AppsFirewallIngressRulesPatch (Maybe Xgafv)
afirpXgafv
  = lens _afirpXgafv (\ s a -> s{_afirpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
afirpUploadProtocol :: Lens' AppsFirewallIngressRulesPatch (Maybe Text)
afirpUploadProtocol
  = lens _afirpUploadProtocol
      (\ s a -> s{_afirpUploadProtocol = a})

-- | Standard field mask for the set of fields to be updated.
afirpUpdateMask :: Lens' AppsFirewallIngressRulesPatch (Maybe GFieldMask)
afirpUpdateMask
  = lens _afirpUpdateMask
      (\ s a -> s{_afirpUpdateMask = a})

-- | OAuth access token.
afirpAccessToken :: Lens' AppsFirewallIngressRulesPatch (Maybe Text)
afirpAccessToken
  = lens _afirpAccessToken
      (\ s a -> s{_afirpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
afirpUploadType :: Lens' AppsFirewallIngressRulesPatch (Maybe Text)
afirpUploadType
  = lens _afirpUploadType
      (\ s a -> s{_afirpUploadType = a})

-- | Multipart request metadata.
afirpPayload :: Lens' AppsFirewallIngressRulesPatch FirewallRule
afirpPayload
  = lens _afirpPayload (\ s a -> s{_afirpPayload = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
afirpIngressRulesId :: Lens' AppsFirewallIngressRulesPatch Text
afirpIngressRulesId
  = lens _afirpIngressRulesId
      (\ s a -> s{_afirpIngressRulesId = a})

-- | Part of \`name\`. Name of the Firewall resource to update. Example:
-- apps\/myapp\/firewall\/ingressRules\/100.
afirpAppsId :: Lens' AppsFirewallIngressRulesPatch Text
afirpAppsId
  = lens _afirpAppsId (\ s a -> s{_afirpAppsId = a})

-- | JSONP
afirpCallback :: Lens' AppsFirewallIngressRulesPatch (Maybe Text)
afirpCallback
  = lens _afirpCallback
      (\ s a -> s{_afirpCallback = a})

instance GoogleRequest AppsFirewallIngressRulesPatch
         where
        type Rs AppsFirewallIngressRulesPatch = FirewallRule
        type Scopes AppsFirewallIngressRulesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsFirewallIngressRulesPatch'{..}
          = go _afirpAppsId _afirpIngressRulesId _afirpXgafv
              _afirpUploadProtocol
              _afirpUpdateMask
              _afirpAccessToken
              _afirpUploadType
              _afirpCallback
              (Just AltJSON)
              _afirpPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AppsFirewallIngressRulesPatchResource)
                      mempty
