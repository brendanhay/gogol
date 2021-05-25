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
-- Module      : Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified firewall rule.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.firewall.ingressRules.get@.
module Network.Google.Resource.AppEngine.Apps.Firewall.IngressRules.Get
    (
    -- * REST Resource
      AppsFirewallIngressRulesGetResource

    -- * Creating a Request
    , appsFirewallIngressRulesGet
    , AppsFirewallIngressRulesGet

    -- * Request Lenses
    , afirgXgafv
    , afirgUploadProtocol
    , afirgAccessToken
    , afirgUploadType
    , afirgIngressRulesId
    , afirgAppsId
    , afirgCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.firewall.ingressRules.get@ method which the
-- 'AppsFirewallIngressRulesGet' request conforms to.
type AppsFirewallIngressRulesGetResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "firewall" :>
             "ingressRules" :>
               Capture "ingressRulesId" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] FirewallRule

-- | Gets the specified firewall rule.
--
-- /See:/ 'appsFirewallIngressRulesGet' smart constructor.
data AppsFirewallIngressRulesGet =
  AppsFirewallIngressRulesGet'
    { _afirgXgafv :: !(Maybe Xgafv)
    , _afirgUploadProtocol :: !(Maybe Text)
    , _afirgAccessToken :: !(Maybe Text)
    , _afirgUploadType :: !(Maybe Text)
    , _afirgIngressRulesId :: !Text
    , _afirgAppsId :: !Text
    , _afirgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsFirewallIngressRulesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afirgXgafv'
--
-- * 'afirgUploadProtocol'
--
-- * 'afirgAccessToken'
--
-- * 'afirgUploadType'
--
-- * 'afirgIngressRulesId'
--
-- * 'afirgAppsId'
--
-- * 'afirgCallback'
appsFirewallIngressRulesGet
    :: Text -- ^ 'afirgIngressRulesId'
    -> Text -- ^ 'afirgAppsId'
    -> AppsFirewallIngressRulesGet
appsFirewallIngressRulesGet pAfirgIngressRulesId_ pAfirgAppsId_ =
  AppsFirewallIngressRulesGet'
    { _afirgXgafv = Nothing
    , _afirgUploadProtocol = Nothing
    , _afirgAccessToken = Nothing
    , _afirgUploadType = Nothing
    , _afirgIngressRulesId = pAfirgIngressRulesId_
    , _afirgAppsId = pAfirgAppsId_
    , _afirgCallback = Nothing
    }


-- | V1 error format.
afirgXgafv :: Lens' AppsFirewallIngressRulesGet (Maybe Xgafv)
afirgXgafv
  = lens _afirgXgafv (\ s a -> s{_afirgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
afirgUploadProtocol :: Lens' AppsFirewallIngressRulesGet (Maybe Text)
afirgUploadProtocol
  = lens _afirgUploadProtocol
      (\ s a -> s{_afirgUploadProtocol = a})

-- | OAuth access token.
afirgAccessToken :: Lens' AppsFirewallIngressRulesGet (Maybe Text)
afirgAccessToken
  = lens _afirgAccessToken
      (\ s a -> s{_afirgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
afirgUploadType :: Lens' AppsFirewallIngressRulesGet (Maybe Text)
afirgUploadType
  = lens _afirgUploadType
      (\ s a -> s{_afirgUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
afirgIngressRulesId :: Lens' AppsFirewallIngressRulesGet Text
afirgIngressRulesId
  = lens _afirgIngressRulesId
      (\ s a -> s{_afirgIngressRulesId = a})

-- | Part of \`name\`. Name of the Firewall resource to retrieve. Example:
-- apps\/myapp\/firewall\/ingressRules\/100.
afirgAppsId :: Lens' AppsFirewallIngressRulesGet Text
afirgAppsId
  = lens _afirgAppsId (\ s a -> s{_afirgAppsId = a})

-- | JSONP
afirgCallback :: Lens' AppsFirewallIngressRulesGet (Maybe Text)
afirgCallback
  = lens _afirgCallback
      (\ s a -> s{_afirgCallback = a})

instance GoogleRequest AppsFirewallIngressRulesGet
         where
        type Rs AppsFirewallIngressRulesGet = FirewallRule
        type Scopes AppsFirewallIngressRulesGet =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsFirewallIngressRulesGet'{..}
          = go _afirgAppsId _afirgIngressRulesId _afirgXgafv
              _afirgUploadProtocol
              _afirgAccessToken
              _afirgUploadType
              _afirgCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsFirewallIngressRulesGetResource)
                      mempty
