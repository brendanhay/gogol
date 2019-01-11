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
-- Module      : Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.GenerateUploadURL
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a signed URL for uploading a function source code. For more
-- information about the signed URL usage see:
-- https:\/\/cloud.google.com\/storage\/docs\/access-control\/signed-urls.
-- Once the function source code upload is complete, the used signed URL
-- should be provided in CreateFunction or UpdateFunction request as a
-- reference to the function source code. When uploading source code to the
-- generated signed URL, please follow these restrictions: * Source file
-- type should be a zip file. * Source file size should not exceed 100MB
-- limit. When making a HTTP PUT request, these two headers need to be
-- specified: * \`content-type: application\/zip\` *
-- \`x-goog-content-length-range: 0,104857600\`
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.generateUploadUrl@.
module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.GenerateUploadURL
    (
    -- * REST Resource
      ProjectsLocationsFunctionsGenerateUploadURLResource

    -- * Creating a Request
    , projectsLocationsFunctionsGenerateUploadURL
    , ProjectsLocationsFunctionsGenerateUploadURL

    -- * Request Lenses
    , plfguuParent
    , plfguuXgafv
    , plfguuUploadProtocol
    , plfguuAccessToken
    , plfguuUploadType
    , plfguuPayload
    , plfguuCallback
    ) where

import           Network.Google.CloudFunctions.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudfunctions.projects.locations.functions.generateUploadUrl@ method which the
-- 'ProjectsLocationsFunctionsGenerateUploadURL' request conforms to.
type ProjectsLocationsFunctionsGenerateUploadURLResource
     =
     "v1" :>
       Capture "parent" Text :>
         "functions:generateUploadUrl" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GenerateUploadURLRequest :>
                         Post '[JSON] GenerateUploadURLResponse

-- | Returns a signed URL for uploading a function source code. For more
-- information about the signed URL usage see:
-- https:\/\/cloud.google.com\/storage\/docs\/access-control\/signed-urls.
-- Once the function source code upload is complete, the used signed URL
-- should be provided in CreateFunction or UpdateFunction request as a
-- reference to the function source code. When uploading source code to the
-- generated signed URL, please follow these restrictions: * Source file
-- type should be a zip file. * Source file size should not exceed 100MB
-- limit. When making a HTTP PUT request, these two headers need to be
-- specified: * \`content-type: application\/zip\` *
-- \`x-goog-content-length-range: 0,104857600\`
--
-- /See:/ 'projectsLocationsFunctionsGenerateUploadURL' smart constructor.
data ProjectsLocationsFunctionsGenerateUploadURL = ProjectsLocationsFunctionsGenerateUploadURL'
    { _plfguuParent         :: !Text
    , _plfguuXgafv          :: !(Maybe Xgafv)
    , _plfguuUploadProtocol :: !(Maybe Text)
    , _plfguuAccessToken    :: !(Maybe Text)
    , _plfguuUploadType     :: !(Maybe Text)
    , _plfguuPayload        :: !GenerateUploadURLRequest
    , _plfguuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsFunctionsGenerateUploadURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plfguuParent'
--
-- * 'plfguuXgafv'
--
-- * 'plfguuUploadProtocol'
--
-- * 'plfguuAccessToken'
--
-- * 'plfguuUploadType'
--
-- * 'plfguuPayload'
--
-- * 'plfguuCallback'
projectsLocationsFunctionsGenerateUploadURL
    :: Text -- ^ 'plfguuParent'
    -> GenerateUploadURLRequest -- ^ 'plfguuPayload'
    -> ProjectsLocationsFunctionsGenerateUploadURL
projectsLocationsFunctionsGenerateUploadURL pPlfguuParent_ pPlfguuPayload_ =
    ProjectsLocationsFunctionsGenerateUploadURL'
    { _plfguuParent = pPlfguuParent_
    , _plfguuXgafv = Nothing
    , _plfguuUploadProtocol = Nothing
    , _plfguuAccessToken = Nothing
    , _plfguuUploadType = Nothing
    , _plfguuPayload = pPlfguuPayload_
    , _plfguuCallback = Nothing
    }

-- | The project and location in which the Google Cloud Storage signed URL
-- should be generated, specified in the format
-- \`projects\/*\/locations\/*\`.
plfguuParent :: Lens' ProjectsLocationsFunctionsGenerateUploadURL Text
plfguuParent
  = lens _plfguuParent (\ s a -> s{_plfguuParent = a})

-- | V1 error format.
plfguuXgafv :: Lens' ProjectsLocationsFunctionsGenerateUploadURL (Maybe Xgafv)
plfguuXgafv
  = lens _plfguuXgafv (\ s a -> s{_plfguuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plfguuUploadProtocol :: Lens' ProjectsLocationsFunctionsGenerateUploadURL (Maybe Text)
plfguuUploadProtocol
  = lens _plfguuUploadProtocol
      (\ s a -> s{_plfguuUploadProtocol = a})

-- | OAuth access token.
plfguuAccessToken :: Lens' ProjectsLocationsFunctionsGenerateUploadURL (Maybe Text)
plfguuAccessToken
  = lens _plfguuAccessToken
      (\ s a -> s{_plfguuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plfguuUploadType :: Lens' ProjectsLocationsFunctionsGenerateUploadURL (Maybe Text)
plfguuUploadType
  = lens _plfguuUploadType
      (\ s a -> s{_plfguuUploadType = a})

-- | Multipart request metadata.
plfguuPayload :: Lens' ProjectsLocationsFunctionsGenerateUploadURL GenerateUploadURLRequest
plfguuPayload
  = lens _plfguuPayload
      (\ s a -> s{_plfguuPayload = a})

-- | JSONP
plfguuCallback :: Lens' ProjectsLocationsFunctionsGenerateUploadURL (Maybe Text)
plfguuCallback
  = lens _plfguuCallback
      (\ s a -> s{_plfguuCallback = a})

instance GoogleRequest
         ProjectsLocationsFunctionsGenerateUploadURL where
        type Rs ProjectsLocationsFunctionsGenerateUploadURL =
             GenerateUploadURLResponse
        type Scopes
               ProjectsLocationsFunctionsGenerateUploadURL
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsFunctionsGenerateUploadURL'{..}
          = go _plfguuParent _plfguuXgafv _plfguuUploadProtocol
              _plfguuAccessToken
              _plfguuUploadType
              _plfguuCallback
              (Just AltJSON)
              _plfguuPayload
              cloudFunctionsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsFunctionsGenerateUploadURLResource)
                      mempty
