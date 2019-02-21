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
-- Module      : Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.GenerateDownloadURL
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a signed URL for downloading deployed function source code. The
-- URL is only valid for a limited period and should be used within minutes
-- after generation. For more information about the signed URL usage see:
-- https:\/\/cloud.google.com\/storage\/docs\/access-control\/signed-urls
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.generateDownloadUrl@.
module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.GenerateDownloadURL
    (
    -- * REST Resource
      ProjectsLocationsFunctionsGenerateDownloadURLResource

    -- * Creating a Request
    , projectsLocationsFunctionsGenerateDownloadURL
    , ProjectsLocationsFunctionsGenerateDownloadURL

    -- * Request Lenses
    , plfgduXgafv
    , plfgduUploadProtocol
    , plfgduAccessToken
    , plfgduUploadType
    , plfgduPayload
    , plfgduName
    , plfgduCallback
    ) where

import           Network.Google.CloudFunctions.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudfunctions.projects.locations.functions.generateDownloadUrl@ method which the
-- 'ProjectsLocationsFunctionsGenerateDownloadURL' request conforms to.
type ProjectsLocationsFunctionsGenerateDownloadURLResource
     =
     "v1" :>
       CaptureMode "name" "generateDownloadUrl" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GenerateDownloadURLRequest :>
                       Post '[JSON] GenerateDownloadURLResponse

-- | Returns a signed URL for downloading deployed function source code. The
-- URL is only valid for a limited period and should be used within minutes
-- after generation. For more information about the signed URL usage see:
-- https:\/\/cloud.google.com\/storage\/docs\/access-control\/signed-urls
--
-- /See:/ 'projectsLocationsFunctionsGenerateDownloadURL' smart constructor.
data ProjectsLocationsFunctionsGenerateDownloadURL =
  ProjectsLocationsFunctionsGenerateDownloadURL'
    { _plfgduXgafv          :: !(Maybe Xgafv)
    , _plfgduUploadProtocol :: !(Maybe Text)
    , _plfgduAccessToken    :: !(Maybe Text)
    , _plfgduUploadType     :: !(Maybe Text)
    , _plfgduPayload        :: !GenerateDownloadURLRequest
    , _plfgduName           :: !Text
    , _plfgduCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsFunctionsGenerateDownloadURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plfgduXgafv'
--
-- * 'plfgduUploadProtocol'
--
-- * 'plfgduAccessToken'
--
-- * 'plfgduUploadType'
--
-- * 'plfgduPayload'
--
-- * 'plfgduName'
--
-- * 'plfgduCallback'
projectsLocationsFunctionsGenerateDownloadURL
    :: GenerateDownloadURLRequest -- ^ 'plfgduPayload'
    -> Text -- ^ 'plfgduName'
    -> ProjectsLocationsFunctionsGenerateDownloadURL
projectsLocationsFunctionsGenerateDownloadURL pPlfgduPayload_ pPlfgduName_ =
  ProjectsLocationsFunctionsGenerateDownloadURL'
    { _plfgduXgafv = Nothing
    , _plfgduUploadProtocol = Nothing
    , _plfgduAccessToken = Nothing
    , _plfgduUploadType = Nothing
    , _plfgduPayload = pPlfgduPayload_
    , _plfgduName = pPlfgduName_
    , _plfgduCallback = Nothing
    }


-- | V1 error format.
plfgduXgafv :: Lens' ProjectsLocationsFunctionsGenerateDownloadURL (Maybe Xgafv)
plfgduXgafv
  = lens _plfgduXgafv (\ s a -> s{_plfgduXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plfgduUploadProtocol :: Lens' ProjectsLocationsFunctionsGenerateDownloadURL (Maybe Text)
plfgduUploadProtocol
  = lens _plfgduUploadProtocol
      (\ s a -> s{_plfgduUploadProtocol = a})

-- | OAuth access token.
plfgduAccessToken :: Lens' ProjectsLocationsFunctionsGenerateDownloadURL (Maybe Text)
plfgduAccessToken
  = lens _plfgduAccessToken
      (\ s a -> s{_plfgduAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plfgduUploadType :: Lens' ProjectsLocationsFunctionsGenerateDownloadURL (Maybe Text)
plfgduUploadType
  = lens _plfgduUploadType
      (\ s a -> s{_plfgduUploadType = a})

-- | Multipart request metadata.
plfgduPayload :: Lens' ProjectsLocationsFunctionsGenerateDownloadURL GenerateDownloadURLRequest
plfgduPayload
  = lens _plfgduPayload
      (\ s a -> s{_plfgduPayload = a})

-- | The name of function for which source code Google Cloud Storage signed
-- URL should be generated.
plfgduName :: Lens' ProjectsLocationsFunctionsGenerateDownloadURL Text
plfgduName
  = lens _plfgduName (\ s a -> s{_plfgduName = a})

-- | JSONP
plfgduCallback :: Lens' ProjectsLocationsFunctionsGenerateDownloadURL (Maybe Text)
plfgduCallback
  = lens _plfgduCallback
      (\ s a -> s{_plfgduCallback = a})

instance GoogleRequest
           ProjectsLocationsFunctionsGenerateDownloadURL
         where
        type Rs ProjectsLocationsFunctionsGenerateDownloadURL
             = GenerateDownloadURLResponse
        type Scopes
               ProjectsLocationsFunctionsGenerateDownloadURL
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsFunctionsGenerateDownloadURL'{..}
          = go _plfgduName _plfgduXgafv _plfgduUploadProtocol
              _plfgduAccessToken
              _plfgduUploadType
              _plfgduCallback
              (Just AltJSON)
              _plfgduPayload
              cloudFunctionsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsFunctionsGenerateDownloadURLResource)
                      mempty
