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
-- Module      : Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of functions that belong to the requested project.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.list@.
module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.List
    (
    -- * REST Resource
      ProjectsLocationsFunctionsListResource

    -- * Creating a Request
    , projectsLocationsFunctionsList
    , ProjectsLocationsFunctionsList

    -- * Request Lenses
    , plflParent
    , plflXgafv
    , plflUploadProtocol
    , plflAccessToken
    , plflUploadType
    , plflPageToken
    , plflPageSize
    , plflCallback
    ) where

import           Network.Google.CloudFunctions.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudfunctions.projects.locations.functions.list@ method which the
-- 'ProjectsLocationsFunctionsList' request conforms to.
type ProjectsLocationsFunctionsListResource =
     "v1" :>
       Capture "parent" Text :>
         "functions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListFunctionsResponse

-- | Returns a list of functions that belong to the requested project.
--
-- /See:/ 'projectsLocationsFunctionsList' smart constructor.
data ProjectsLocationsFunctionsList = ProjectsLocationsFunctionsList'
    { _plflParent         :: !Text
    , _plflXgafv          :: !(Maybe Xgafv)
    , _plflUploadProtocol :: !(Maybe Text)
    , _plflAccessToken    :: !(Maybe Text)
    , _plflUploadType     :: !(Maybe Text)
    , _plflPageToken      :: !(Maybe Text)
    , _plflPageSize       :: !(Maybe (Textual Int32))
    , _plflCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsFunctionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plflParent'
--
-- * 'plflXgafv'
--
-- * 'plflUploadProtocol'
--
-- * 'plflAccessToken'
--
-- * 'plflUploadType'
--
-- * 'plflPageToken'
--
-- * 'plflPageSize'
--
-- * 'plflCallback'
projectsLocationsFunctionsList
    :: Text -- ^ 'plflParent'
    -> ProjectsLocationsFunctionsList
projectsLocationsFunctionsList pPlflParent_ =
    ProjectsLocationsFunctionsList'
    { _plflParent = pPlflParent_
    , _plflXgafv = Nothing
    , _plflUploadProtocol = Nothing
    , _plflAccessToken = Nothing
    , _plflUploadType = Nothing
    , _plflPageToken = Nothing
    , _plflPageSize = Nothing
    , _plflCallback = Nothing
    }

-- | The project and location from which the function should be listed,
-- specified in the format \`projects\/*\/locations\/*\` If you want to
-- list functions in all locations, use \"-\" in place of a location.
plflParent :: Lens' ProjectsLocationsFunctionsList Text
plflParent
  = lens _plflParent (\ s a -> s{_plflParent = a})

-- | V1 error format.
plflXgafv :: Lens' ProjectsLocationsFunctionsList (Maybe Xgafv)
plflXgafv
  = lens _plflXgafv (\ s a -> s{_plflXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plflUploadProtocol :: Lens' ProjectsLocationsFunctionsList (Maybe Text)
plflUploadProtocol
  = lens _plflUploadProtocol
      (\ s a -> s{_plflUploadProtocol = a})

-- | OAuth access token.
plflAccessToken :: Lens' ProjectsLocationsFunctionsList (Maybe Text)
plflAccessToken
  = lens _plflAccessToken
      (\ s a -> s{_plflAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plflUploadType :: Lens' ProjectsLocationsFunctionsList (Maybe Text)
plflUploadType
  = lens _plflUploadType
      (\ s a -> s{_plflUploadType = a})

-- | The value returned by the last \`ListFunctionsResponse\`; indicates that
-- this is a continuation of a prior \`ListFunctions\` call, and that the
-- system should return the next page of data.
plflPageToken :: Lens' ProjectsLocationsFunctionsList (Maybe Text)
plflPageToken
  = lens _plflPageToken
      (\ s a -> s{_plflPageToken = a})

-- | Maximum number of functions to return per call.
plflPageSize :: Lens' ProjectsLocationsFunctionsList (Maybe Int32)
plflPageSize
  = lens _plflPageSize (\ s a -> s{_plflPageSize = a})
      . mapping _Coerce

-- | JSONP
plflCallback :: Lens' ProjectsLocationsFunctionsList (Maybe Text)
plflCallback
  = lens _plflCallback (\ s a -> s{_plflCallback = a})

instance GoogleRequest ProjectsLocationsFunctionsList
         where
        type Rs ProjectsLocationsFunctionsList =
             ListFunctionsResponse
        type Scopes ProjectsLocationsFunctionsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsFunctionsList'{..}
          = go _plflParent _plflXgafv _plflUploadProtocol
              _plflAccessToken
              _plflUploadType
              _plflPageToken
              _plflPageSize
              _plflCallback
              (Just AltJSON)
              cloudFunctionsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsFunctionsListResource)
                      mempty
