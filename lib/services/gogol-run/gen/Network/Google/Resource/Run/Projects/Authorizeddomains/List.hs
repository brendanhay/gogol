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
-- Module      : Network.Google.Resource.Run.Projects.Authorizeddomains.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List authorized domains.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.authorizeddomains.list@.
module Network.Google.Resource.Run.Projects.Authorizeddomains.List
    (
    -- * REST Resource
      ProjectsAuthorizeddomainsListResource

    -- * Creating a Request
    , projectsAuthorizeddomainsList
    , ProjectsAuthorizeddomainsList

    -- * Request Lenses
    , palParent
    , palXgafv
    , palUploadProtocol
    , palAccessToken
    , palUploadType
    , palPageToken
    , palPageSize
    , palCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.authorizeddomains.list@ method which the
-- 'ProjectsAuthorizeddomainsList' request conforms to.
type ProjectsAuthorizeddomainsListResource =
     "v1" :>
       Capture "parent" Text :>
         "authorizeddomains" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListAuthorizedDomainsResponse

-- | List authorized domains.
--
-- /See:/ 'projectsAuthorizeddomainsList' smart constructor.
data ProjectsAuthorizeddomainsList =
  ProjectsAuthorizeddomainsList'
    { _palParent :: !Text
    , _palXgafv :: !(Maybe Xgafv)
    , _palUploadProtocol :: !(Maybe Text)
    , _palAccessToken :: !(Maybe Text)
    , _palUploadType :: !(Maybe Text)
    , _palPageToken :: !(Maybe Text)
    , _palPageSize :: !(Maybe (Textual Int32))
    , _palCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAuthorizeddomainsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'palParent'
--
-- * 'palXgafv'
--
-- * 'palUploadProtocol'
--
-- * 'palAccessToken'
--
-- * 'palUploadType'
--
-- * 'palPageToken'
--
-- * 'palPageSize'
--
-- * 'palCallback'
projectsAuthorizeddomainsList
    :: Text -- ^ 'palParent'
    -> ProjectsAuthorizeddomainsList
projectsAuthorizeddomainsList pPalParent_ =
  ProjectsAuthorizeddomainsList'
    { _palParent = pPalParent_
    , _palXgafv = Nothing
    , _palUploadProtocol = Nothing
    , _palAccessToken = Nothing
    , _palUploadType = Nothing
    , _palPageToken = Nothing
    , _palPageSize = Nothing
    , _palCallback = Nothing
    }


-- | Name of the parent Project resource. Example: \`projects\/myproject\`.
palParent :: Lens' ProjectsAuthorizeddomainsList Text
palParent
  = lens _palParent (\ s a -> s{_palParent = a})

-- | V1 error format.
palXgafv :: Lens' ProjectsAuthorizeddomainsList (Maybe Xgafv)
palXgafv = lens _palXgafv (\ s a -> s{_palXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
palUploadProtocol :: Lens' ProjectsAuthorizeddomainsList (Maybe Text)
palUploadProtocol
  = lens _palUploadProtocol
      (\ s a -> s{_palUploadProtocol = a})

-- | OAuth access token.
palAccessToken :: Lens' ProjectsAuthorizeddomainsList (Maybe Text)
palAccessToken
  = lens _palAccessToken
      (\ s a -> s{_palAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
palUploadType :: Lens' ProjectsAuthorizeddomainsList (Maybe Text)
palUploadType
  = lens _palUploadType
      (\ s a -> s{_palUploadType = a})

-- | Continuation token for fetching the next page of results.
palPageToken :: Lens' ProjectsAuthorizeddomainsList (Maybe Text)
palPageToken
  = lens _palPageToken (\ s a -> s{_palPageToken = a})

-- | Maximum results to return per page.
palPageSize :: Lens' ProjectsAuthorizeddomainsList (Maybe Int32)
palPageSize
  = lens _palPageSize (\ s a -> s{_palPageSize = a}) .
      mapping _Coerce

-- | JSONP
palCallback :: Lens' ProjectsAuthorizeddomainsList (Maybe Text)
palCallback
  = lens _palCallback (\ s a -> s{_palCallback = a})

instance GoogleRequest ProjectsAuthorizeddomainsList
         where
        type Rs ProjectsAuthorizeddomainsList =
             ListAuthorizedDomainsResponse
        type Scopes ProjectsAuthorizeddomainsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsAuthorizeddomainsList'{..}
          = go _palParent _palXgafv _palUploadProtocol
              _palAccessToken
              _palUploadType
              _palPageToken
              _palPageSize
              _palCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAuthorizeddomainsListResource)
                      mempty
