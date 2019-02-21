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
-- Module      : Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a function with the given name from the requested project.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.get@.
module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Get
    (
    -- * REST Resource
      ProjectsLocationsFunctionsGetResource

    -- * Creating a Request
    , projectsLocationsFunctionsGet
    , ProjectsLocationsFunctionsGet

    -- * Request Lenses
    , plfgXgafv
    , plfgUploadProtocol
    , plfgAccessToken
    , plfgUploadType
    , plfgName
    , plfgCallback
    ) where

import           Network.Google.CloudFunctions.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudfunctions.projects.locations.functions.get@ method which the
-- 'ProjectsLocationsFunctionsGet' request conforms to.
type ProjectsLocationsFunctionsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] CloudFunction

-- | Returns a function with the given name from the requested project.
--
-- /See:/ 'projectsLocationsFunctionsGet' smart constructor.
data ProjectsLocationsFunctionsGet =
  ProjectsLocationsFunctionsGet'
    { _plfgXgafv          :: !(Maybe Xgafv)
    , _plfgUploadProtocol :: !(Maybe Text)
    , _plfgAccessToken    :: !(Maybe Text)
    , _plfgUploadType     :: !(Maybe Text)
    , _plfgName           :: !Text
    , _plfgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsFunctionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plfgXgafv'
--
-- * 'plfgUploadProtocol'
--
-- * 'plfgAccessToken'
--
-- * 'plfgUploadType'
--
-- * 'plfgName'
--
-- * 'plfgCallback'
projectsLocationsFunctionsGet
    :: Text -- ^ 'plfgName'
    -> ProjectsLocationsFunctionsGet
projectsLocationsFunctionsGet pPlfgName_ =
  ProjectsLocationsFunctionsGet'
    { _plfgXgafv = Nothing
    , _plfgUploadProtocol = Nothing
    , _plfgAccessToken = Nothing
    , _plfgUploadType = Nothing
    , _plfgName = pPlfgName_
    , _plfgCallback = Nothing
    }


-- | V1 error format.
plfgXgafv :: Lens' ProjectsLocationsFunctionsGet (Maybe Xgafv)
plfgXgafv
  = lens _plfgXgafv (\ s a -> s{_plfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plfgUploadProtocol :: Lens' ProjectsLocationsFunctionsGet (Maybe Text)
plfgUploadProtocol
  = lens _plfgUploadProtocol
      (\ s a -> s{_plfgUploadProtocol = a})

-- | OAuth access token.
plfgAccessToken :: Lens' ProjectsLocationsFunctionsGet (Maybe Text)
plfgAccessToken
  = lens _plfgAccessToken
      (\ s a -> s{_plfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plfgUploadType :: Lens' ProjectsLocationsFunctionsGet (Maybe Text)
plfgUploadType
  = lens _plfgUploadType
      (\ s a -> s{_plfgUploadType = a})

-- | The name of the function which details should be obtained.
plfgName :: Lens' ProjectsLocationsFunctionsGet Text
plfgName = lens _plfgName (\ s a -> s{_plfgName = a})

-- | JSONP
plfgCallback :: Lens' ProjectsLocationsFunctionsGet (Maybe Text)
plfgCallback
  = lens _plfgCallback (\ s a -> s{_plfgCallback = a})

instance GoogleRequest ProjectsLocationsFunctionsGet
         where
        type Rs ProjectsLocationsFunctionsGet = CloudFunction
        type Scopes ProjectsLocationsFunctionsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsFunctionsGet'{..}
          = go _plfgName _plfgXgafv _plfgUploadProtocol
              _plfgAccessToken
              _plfgUploadType
              _plfgCallback
              (Just AltJSON)
              cloudFunctionsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsFunctionsGetResource)
                      mempty
