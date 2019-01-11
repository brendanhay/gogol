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
-- Module      : Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a function with the given name from the specified project. If
-- the given function is used by some trigger, the trigger will be updated
-- to remove this function.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.delete@.
module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Delete
    (
    -- * REST Resource
      ProjectsLocationsFunctionsDeleteResource

    -- * Creating a Request
    , projectsLocationsFunctionsDelete
    , ProjectsLocationsFunctionsDelete

    -- * Request Lenses
    , plfdXgafv
    , plfdUploadProtocol
    , plfdAccessToken
    , plfdUploadType
    , plfdName
    , plfdCallback
    ) where

import           Network.Google.CloudFunctions.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudfunctions.projects.locations.functions.delete@ method which the
-- 'ProjectsLocationsFunctionsDelete' request conforms to.
type ProjectsLocationsFunctionsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a function with the given name from the specified project. If
-- the given function is used by some trigger, the trigger will be updated
-- to remove this function.
--
-- /See:/ 'projectsLocationsFunctionsDelete' smart constructor.
data ProjectsLocationsFunctionsDelete = ProjectsLocationsFunctionsDelete'
    { _plfdXgafv          :: !(Maybe Xgafv)
    , _plfdUploadProtocol :: !(Maybe Text)
    , _plfdAccessToken    :: !(Maybe Text)
    , _plfdUploadType     :: !(Maybe Text)
    , _plfdName           :: !Text
    , _plfdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsFunctionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plfdXgafv'
--
-- * 'plfdUploadProtocol'
--
-- * 'plfdAccessToken'
--
-- * 'plfdUploadType'
--
-- * 'plfdName'
--
-- * 'plfdCallback'
projectsLocationsFunctionsDelete
    :: Text -- ^ 'plfdName'
    -> ProjectsLocationsFunctionsDelete
projectsLocationsFunctionsDelete pPlfdName_ =
    ProjectsLocationsFunctionsDelete'
    { _plfdXgafv = Nothing
    , _plfdUploadProtocol = Nothing
    , _plfdAccessToken = Nothing
    , _plfdUploadType = Nothing
    , _plfdName = pPlfdName_
    , _plfdCallback = Nothing
    }

-- | V1 error format.
plfdXgafv :: Lens' ProjectsLocationsFunctionsDelete (Maybe Xgafv)
plfdXgafv
  = lens _plfdXgafv (\ s a -> s{_plfdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plfdUploadProtocol :: Lens' ProjectsLocationsFunctionsDelete (Maybe Text)
plfdUploadProtocol
  = lens _plfdUploadProtocol
      (\ s a -> s{_plfdUploadProtocol = a})

-- | OAuth access token.
plfdAccessToken :: Lens' ProjectsLocationsFunctionsDelete (Maybe Text)
plfdAccessToken
  = lens _plfdAccessToken
      (\ s a -> s{_plfdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plfdUploadType :: Lens' ProjectsLocationsFunctionsDelete (Maybe Text)
plfdUploadType
  = lens _plfdUploadType
      (\ s a -> s{_plfdUploadType = a})

-- | The name of the function which should be deleted.
plfdName :: Lens' ProjectsLocationsFunctionsDelete Text
plfdName = lens _plfdName (\ s a -> s{_plfdName = a})

-- | JSONP
plfdCallback :: Lens' ProjectsLocationsFunctionsDelete (Maybe Text)
plfdCallback
  = lens _plfdCallback (\ s a -> s{_plfdCallback = a})

instance GoogleRequest
         ProjectsLocationsFunctionsDelete where
        type Rs ProjectsLocationsFunctionsDelete = Operation
        type Scopes ProjectsLocationsFunctionsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsFunctionsDelete'{..}
          = go _plfdName _plfdXgafv _plfdUploadProtocol
              _plfdAccessToken
              _plfdUploadType
              _plfdCallback
              (Just AltJSON)
              cloudFunctionsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsFunctionsDeleteResource)
                      mempty
