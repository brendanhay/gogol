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
-- Module      : Network.Google.Resource.ServiceUser.Projects.Services.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List enabled services for the specified consumer.
--
-- /See:/ <https://cloud.google.com/service-management/ Service User API Reference> for @serviceuser.projects.services.list@.
module Network.Google.Resource.ServiceUser.Projects.Services.List
    (
    -- * REST Resource
      ProjectsServicesListResource

    -- * Creating a Request
    , projectsServicesList
    , ProjectsServicesList

    -- * Request Lenses
    , pslParent
    , pslXgafv
    , pslUploadProtocol
    , pslAccessToken
    , pslUploadType
    , pslPageToken
    , pslPageSize
    , pslCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceUser.Types

-- | A resource alias for @serviceuser.projects.services.list@ method which the
-- 'ProjectsServicesList' request conforms to.
type ProjectsServicesListResource =
     "v1" :>
       Capture "parent" Text :>
         "services" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListEnabledServicesResponse

-- | List enabled services for the specified consumer.
--
-- /See:/ 'projectsServicesList' smart constructor.
data ProjectsServicesList =
  ProjectsServicesList'
    { _pslParent :: !Text
    , _pslXgafv :: !(Maybe Xgafv)
    , _pslUploadProtocol :: !(Maybe Text)
    , _pslAccessToken :: !(Maybe Text)
    , _pslUploadType :: !(Maybe Text)
    , _pslPageToken :: !(Maybe Text)
    , _pslPageSize :: !(Maybe (Textual Int32))
    , _pslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslParent'
--
-- * 'pslXgafv'
--
-- * 'pslUploadProtocol'
--
-- * 'pslAccessToken'
--
-- * 'pslUploadType'
--
-- * 'pslPageToken'
--
-- * 'pslPageSize'
--
-- * 'pslCallback'
projectsServicesList
    :: Text -- ^ 'pslParent'
    -> ProjectsServicesList
projectsServicesList pPslParent_ =
  ProjectsServicesList'
    { _pslParent = pPslParent_
    , _pslXgafv = Nothing
    , _pslUploadProtocol = Nothing
    , _pslAccessToken = Nothing
    , _pslUploadType = Nothing
    , _pslPageToken = Nothing
    , _pslPageSize = Nothing
    , _pslCallback = Nothing
    }


-- | List enabled services for the specified parent. An example valid parent
-- would be: - projects\/my-project
pslParent :: Lens' ProjectsServicesList Text
pslParent
  = lens _pslParent (\ s a -> s{_pslParent = a})

-- | V1 error format.
pslXgafv :: Lens' ProjectsServicesList (Maybe Xgafv)
pslXgafv = lens _pslXgafv (\ s a -> s{_pslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pslUploadProtocol :: Lens' ProjectsServicesList (Maybe Text)
pslUploadProtocol
  = lens _pslUploadProtocol
      (\ s a -> s{_pslUploadProtocol = a})

-- | OAuth access token.
pslAccessToken :: Lens' ProjectsServicesList (Maybe Text)
pslAccessToken
  = lens _pslAccessToken
      (\ s a -> s{_pslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pslUploadType :: Lens' ProjectsServicesList (Maybe Text)
pslUploadType
  = lens _pslUploadType
      (\ s a -> s{_pslUploadType = a})

-- | Token identifying which result to start with; returned by a previous
-- list call.
pslPageToken :: Lens' ProjectsServicesList (Maybe Text)
pslPageToken
  = lens _pslPageToken (\ s a -> s{_pslPageToken = a})

-- | Requested size of the next page of data.
pslPageSize :: Lens' ProjectsServicesList (Maybe Int32)
pslPageSize
  = lens _pslPageSize (\ s a -> s{_pslPageSize = a}) .
      mapping _Coerce

-- | JSONP
pslCallback :: Lens' ProjectsServicesList (Maybe Text)
pslCallback
  = lens _pslCallback (\ s a -> s{_pslCallback = a})

instance GoogleRequest ProjectsServicesList where
        type Rs ProjectsServicesList =
             ListEnabledServicesResponse
        type Scopes ProjectsServicesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsServicesList'{..}
          = go _pslParent _pslXgafv _pslUploadProtocol
              _pslAccessToken
              _pslUploadType
              _pslPageToken
              _pslPageSize
              _pslCallback
              (Just AltJSON)
              serviceUserService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsServicesListResource)
                      mempty
