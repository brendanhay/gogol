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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists project sinks associated with a project.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsSinksList@.
module Network.Google.Resource.Logging.Projects.Sinks.List
    (
    -- * REST Resource
      ProjectsSinksListResource

    -- * Creating a Request
    , projectsSinksList'
    , ProjectsSinksList'

    -- * Request Lenses
    , pslXgafv
    , pslQuotaUser
    , pslPrettyPrint
    , pslUploadProtocol
    , pslPp
    , pslAccessToken
    , pslUploadType
    , pslBearerToken
    , pslKey
    , pslOAuthToken
    , pslProjectsId
    , pslFields
    , pslCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsSinksList@ which the
-- 'ProjectsSinksList'' request conforms to.
type ProjectsSinksListResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "sinks" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ListSinksResponse

-- | Lists project sinks associated with a project.
--
-- /See:/ 'projectsSinksList'' smart constructor.
data ProjectsSinksList' = ProjectsSinksList'
    { _pslXgafv          :: !(Maybe Text)
    , _pslQuotaUser      :: !(Maybe Text)
    , _pslPrettyPrint    :: !Bool
    , _pslUploadProtocol :: !(Maybe Text)
    , _pslPp             :: !Bool
    , _pslAccessToken    :: !(Maybe Text)
    , _pslUploadType     :: !(Maybe Text)
    , _pslBearerToken    :: !(Maybe Text)
    , _pslKey            :: !(Maybe AuthKey)
    , _pslOAuthToken     :: !(Maybe OAuthToken)
    , _pslProjectsId     :: !Text
    , _pslFields         :: !(Maybe Text)
    , _pslCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslXgafv'
--
-- * 'pslQuotaUser'
--
-- * 'pslPrettyPrint'
--
-- * 'pslUploadProtocol'
--
-- * 'pslPp'
--
-- * 'pslAccessToken'
--
-- * 'pslUploadType'
--
-- * 'pslBearerToken'
--
-- * 'pslKey'
--
-- * 'pslOAuthToken'
--
-- * 'pslProjectsId'
--
-- * 'pslFields'
--
-- * 'pslCallback'
projectsSinksList'
    :: Text -- ^ 'projectsId'
    -> ProjectsSinksList'
projectsSinksList' pPslProjectsId_ =
    ProjectsSinksList'
    { _pslXgafv = Nothing
    , _pslQuotaUser = Nothing
    , _pslPrettyPrint = True
    , _pslUploadProtocol = Nothing
    , _pslPp = True
    , _pslAccessToken = Nothing
    , _pslUploadType = Nothing
    , _pslBearerToken = Nothing
    , _pslKey = Nothing
    , _pslOAuthToken = Nothing
    , _pslProjectsId = pPslProjectsId_
    , _pslFields = Nothing
    , _pslCallback = Nothing
    }

-- | V1 error format.
pslXgafv :: Lens' ProjectsSinksList' (Maybe Text)
pslXgafv = lens _pslXgafv (\ s a -> s{_pslXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pslQuotaUser :: Lens' ProjectsSinksList' (Maybe Text)
pslQuotaUser
  = lens _pslQuotaUser (\ s a -> s{_pslQuotaUser = a})

-- | Returns response with indentations and line breaks.
pslPrettyPrint :: Lens' ProjectsSinksList' Bool
pslPrettyPrint
  = lens _pslPrettyPrint
      (\ s a -> s{_pslPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pslUploadProtocol :: Lens' ProjectsSinksList' (Maybe Text)
pslUploadProtocol
  = lens _pslUploadProtocol
      (\ s a -> s{_pslUploadProtocol = a})

-- | Pretty-print response.
pslPp :: Lens' ProjectsSinksList' Bool
pslPp = lens _pslPp (\ s a -> s{_pslPp = a})

-- | OAuth access token.
pslAccessToken :: Lens' ProjectsSinksList' (Maybe Text)
pslAccessToken
  = lens _pslAccessToken
      (\ s a -> s{_pslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pslUploadType :: Lens' ProjectsSinksList' (Maybe Text)
pslUploadType
  = lens _pslUploadType
      (\ s a -> s{_pslUploadType = a})

-- | OAuth bearer token.
pslBearerToken :: Lens' ProjectsSinksList' (Maybe Text)
pslBearerToken
  = lens _pslBearerToken
      (\ s a -> s{_pslBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pslKey :: Lens' ProjectsSinksList' (Maybe AuthKey)
pslKey = lens _pslKey (\ s a -> s{_pslKey = a})

-- | OAuth 2.0 token for the current user.
pslOAuthToken :: Lens' ProjectsSinksList' (Maybe OAuthToken)
pslOAuthToken
  = lens _pslOAuthToken
      (\ s a -> s{_pslOAuthToken = a})

-- | Part of \`projectName\`. The project whose sinks are wanted.
pslProjectsId :: Lens' ProjectsSinksList' Text
pslProjectsId
  = lens _pslProjectsId
      (\ s a -> s{_pslProjectsId = a})

-- | Selector specifying which fields to include in a partial response.
pslFields :: Lens' ProjectsSinksList' (Maybe Text)
pslFields
  = lens _pslFields (\ s a -> s{_pslFields = a})

-- | JSONP
pslCallback :: Lens' ProjectsSinksList' (Maybe Text)
pslCallback
  = lens _pslCallback (\ s a -> s{_pslCallback = a})

instance GoogleAuth ProjectsSinksList' where
        authKey = pslKey . _Just
        authToken = pslOAuthToken . _Just

instance GoogleRequest ProjectsSinksList' where
        type Rs ProjectsSinksList' = ListSinksResponse
        request = requestWith loggingRequest
        requestWith rq ProjectsSinksList'{..}
          = go _pslProjectsId _pslXgafv _pslUploadProtocol
              (Just _pslPp)
              _pslAccessToken
              _pslUploadType
              _pslBearerToken
              _pslCallback
              _pslQuotaUser
              (Just _pslPrettyPrint)
              _pslFields
              _pslKey
              _pslOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsSinksListResource)
                      rq
