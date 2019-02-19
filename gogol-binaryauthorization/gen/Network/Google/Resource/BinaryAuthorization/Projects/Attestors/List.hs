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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.Attestors.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists attestors. Returns INVALID_ARGUMENT if the project does not exist.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.list@.
module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.List
    (
    -- * REST Resource
      ProjectsAttestorsListResource

    -- * Creating a Request
    , projectsAttestorsList
    , ProjectsAttestorsList

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

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.attestors.list@ method which the
-- 'ProjectsAttestorsList' request conforms to.
type ProjectsAttestorsListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "attestors" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListAttestorsResponse

-- | Lists attestors. Returns INVALID_ARGUMENT if the project does not exist.
--
-- /See:/ 'projectsAttestorsList' smart constructor.
data ProjectsAttestorsList =
  ProjectsAttestorsList'
    { _palParent         :: !Text
    , _palXgafv          :: !(Maybe Xgafv)
    , _palUploadProtocol :: !(Maybe Text)
    , _palAccessToken    :: !(Maybe Text)
    , _palUploadType     :: !(Maybe Text)
    , _palPageToken      :: !(Maybe Text)
    , _palPageSize       :: !(Maybe (Textual Int32))
    , _palCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAttestorsList' with the minimum fields required to make a request.
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
projectsAttestorsList
    :: Text -- ^ 'palParent'
    -> ProjectsAttestorsList
projectsAttestorsList pPalParent_ =
  ProjectsAttestorsList'
    { _palParent = pPalParent_
    , _palXgafv = Nothing
    , _palUploadProtocol = Nothing
    , _palAccessToken = Nothing
    , _palUploadType = Nothing
    , _palPageToken = Nothing
    , _palPageSize = Nothing
    , _palCallback = Nothing
    }

-- | Required. The resource name of the project associated with the
-- attestors, in the format \`projects\/*\`.
palParent :: Lens' ProjectsAttestorsList Text
palParent
  = lens _palParent (\ s a -> s{_palParent = a})

-- | V1 error format.
palXgafv :: Lens' ProjectsAttestorsList (Maybe Xgafv)
palXgafv = lens _palXgafv (\ s a -> s{_palXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
palUploadProtocol :: Lens' ProjectsAttestorsList (Maybe Text)
palUploadProtocol
  = lens _palUploadProtocol
      (\ s a -> s{_palUploadProtocol = a})

-- | OAuth access token.
palAccessToken :: Lens' ProjectsAttestorsList (Maybe Text)
palAccessToken
  = lens _palAccessToken
      (\ s a -> s{_palAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
palUploadType :: Lens' ProjectsAttestorsList (Maybe Text)
palUploadType
  = lens _palUploadType
      (\ s a -> s{_palUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListAttestorsResponse.next_page_token
-- returned from the previous call to the \`ListAttestors\` method.
palPageToken :: Lens' ProjectsAttestorsList (Maybe Text)
palPageToken
  = lens _palPageToken (\ s a -> s{_palPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
palPageSize :: Lens' ProjectsAttestorsList (Maybe Int32)
palPageSize
  = lens _palPageSize (\ s a -> s{_palPageSize = a}) .
      mapping _Coerce

-- | JSONP
palCallback :: Lens' ProjectsAttestorsList (Maybe Text)
palCallback
  = lens _palCallback (\ s a -> s{_palCallback = a})

instance GoogleRequest ProjectsAttestorsList where
        type Rs ProjectsAttestorsList = ListAttestorsResponse
        type Scopes ProjectsAttestorsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsAttestorsList'{..}
          = go _palParent _palXgafv _palUploadProtocol
              _palAccessToken
              _palUploadType
              _palPageToken
              _palPageSize
              _palCallback
              (Just AltJSON)
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAttestorsListResource)
                      mempty
