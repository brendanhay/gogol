{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.Versions.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deploys new code and resource files to a version.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @AppengineAppsModulesVersionsCreate@.
module AppEngine.Apps.Modules.Versions.Create
    (
    -- * REST Resource
      AppsModulesVersionsCreateAPI

    -- * Creating a Request
    , appsModulesVersionsCreate
    , AppsModulesVersionsCreate

    -- * Request Lenses
    , amvcXgafv
    , amvcQuotaUser
    , amvcPrettyPrint
    , amvcUploadProtocol
    , amvcPp
    , amvcAccessToken
    , amvcUploadType
    , amvcModulesId
    , amvcBearerToken
    , amvcKey
    , amvcAppsId
    , amvcOauthToken
    , amvcFields
    , amvcCallback
    , amvcAlt
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @AppengineAppsModulesVersionsCreate@ which the
-- 'AppsModulesVersionsCreate' request conforms to.
type AppsModulesVersionsCreateAPI =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "modules" :>
             Capture "modulesId" Text :>
               "versions" :> Post '[JSON] Operation

-- | Deploys new code and resource files to a version.
--
-- /See:/ 'appsModulesVersionsCreate' smart constructor.
data AppsModulesVersionsCreate = AppsModulesVersionsCreate
    { _amvcXgafv          :: !(Maybe Text)
    , _amvcQuotaUser      :: !(Maybe Text)
    , _amvcPrettyPrint    :: !Bool
    , _amvcUploadProtocol :: !(Maybe Text)
    , _amvcPp             :: !Bool
    , _amvcAccessToken    :: !(Maybe Text)
    , _amvcUploadType     :: !(Maybe Text)
    , _amvcModulesId      :: !Text
    , _amvcBearerToken    :: !(Maybe Text)
    , _amvcKey            :: !(Maybe Text)
    , _amvcAppsId         :: !Text
    , _amvcOauthToken     :: !(Maybe Text)
    , _amvcFields         :: !(Maybe Text)
    , _amvcCallback       :: !(Maybe Text)
    , _amvcAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesVersionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amvcXgafv'
--
-- * 'amvcQuotaUser'
--
-- * 'amvcPrettyPrint'
--
-- * 'amvcUploadProtocol'
--
-- * 'amvcPp'
--
-- * 'amvcAccessToken'
--
-- * 'amvcUploadType'
--
-- * 'amvcModulesId'
--
-- * 'amvcBearerToken'
--
-- * 'amvcKey'
--
-- * 'amvcAppsId'
--
-- * 'amvcOauthToken'
--
-- * 'amvcFields'
--
-- * 'amvcCallback'
--
-- * 'amvcAlt'
appsModulesVersionsCreate
    :: Text -- ^ 'modulesId'
    -> Text -- ^ 'appsId'
    -> AppsModulesVersionsCreate
appsModulesVersionsCreate pAmvcModulesId_ pAmvcAppsId_ =
    AppsModulesVersionsCreate
    { _amvcXgafv = Nothing
    , _amvcQuotaUser = Nothing
    , _amvcPrettyPrint = True
    , _amvcUploadProtocol = Nothing
    , _amvcPp = True
    , _amvcAccessToken = Nothing
    , _amvcUploadType = Nothing
    , _amvcModulesId = pAmvcModulesId_
    , _amvcBearerToken = Nothing
    , _amvcKey = Nothing
    , _amvcAppsId = pAmvcAppsId_
    , _amvcOauthToken = Nothing
    , _amvcFields = Nothing
    , _amvcCallback = Nothing
    , _amvcAlt = "json"
    }

-- | V1 error format.
amvcXgafv :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcXgafv
  = lens _amvcXgafv (\ s a -> s{_amvcXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
amvcQuotaUser :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcQuotaUser
  = lens _amvcQuotaUser
      (\ s a -> s{_amvcQuotaUser = a})

-- | Returns response with indentations and line breaks.
amvcPrettyPrint :: Lens' AppsModulesVersionsCreate' Bool
amvcPrettyPrint
  = lens _amvcPrettyPrint
      (\ s a -> s{_amvcPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
amvcUploadProtocol :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcUploadProtocol
  = lens _amvcUploadProtocol
      (\ s a -> s{_amvcUploadProtocol = a})

-- | Pretty-print response.
amvcPp :: Lens' AppsModulesVersionsCreate' Bool
amvcPp = lens _amvcPp (\ s a -> s{_amvcPp = a})

-- | OAuth access token.
amvcAccessToken :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcAccessToken
  = lens _amvcAccessToken
      (\ s a -> s{_amvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
amvcUploadType :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcUploadType
  = lens _amvcUploadType
      (\ s a -> s{_amvcUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
amvcModulesId :: Lens' AppsModulesVersionsCreate' Text
amvcModulesId
  = lens _amvcModulesId
      (\ s a -> s{_amvcModulesId = a})

-- | OAuth bearer token.
amvcBearerToken :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcBearerToken
  = lens _amvcBearerToken
      (\ s a -> s{_amvcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
amvcKey :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcKey = lens _amvcKey (\ s a -> s{_amvcKey = a})

-- | Part of \`name\`. Name of the resource to update. For example:
-- \"apps\/myapp\/modules\/default\".
amvcAppsId :: Lens' AppsModulesVersionsCreate' Text
amvcAppsId
  = lens _amvcAppsId (\ s a -> s{_amvcAppsId = a})

-- | OAuth 2.0 token for the current user.
amvcOauthToken :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcOauthToken
  = lens _amvcOauthToken
      (\ s a -> s{_amvcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
amvcFields :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcFields
  = lens _amvcFields (\ s a -> s{_amvcFields = a})

-- | JSONP
amvcCallback :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcCallback
  = lens _amvcCallback (\ s a -> s{_amvcCallback = a})

-- | Data format for response.
amvcAlt :: Lens' AppsModulesVersionsCreate' Text
amvcAlt = lens _amvcAlt (\ s a -> s{_amvcAlt = a})

instance GoogleRequest AppsModulesVersionsCreate'
         where
        type Rs AppsModulesVersionsCreate' = Operation
        request = requestWithRoute defReq appEngineURL
        requestWithRoute r u AppsModulesVersionsCreate{..}
          = go _amvcXgafv _amvcQuotaUser _amvcPrettyPrint
              _amvcUploadProtocol
              _amvcPp
              _amvcAccessToken
              _amvcUploadType
              _amvcModulesId
              _amvcBearerToken
              _amvcKey
              _amvcAppsId
              _amvcOauthToken
              _amvcFields
              _amvcCallback
              _amvcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AppsModulesVersionsCreateAPI)
                      r
                      u
