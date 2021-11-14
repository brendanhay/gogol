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
-- Module      : Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Call
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Synchronously invokes a deployed Cloud Function. To be used for testing
-- purposes as very limited traffic is allowed. For more information on the
-- actual limits, refer to [Rate
-- Limits](https:\/\/cloud.google.com\/functions\/quotas#rate_limits).
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.call@.
module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Call
    (
    -- * REST Resource
      ProjectsLocationsFunctionsCallResource

    -- * Creating a Request
    , projectsLocationsFunctionsCall
    , ProjectsLocationsFunctionsCall

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pPayload
    , pName
    , pCallback
    ) where

import Network.Google.CloudFunctions.Types
import Network.Google.Prelude

-- | A resource alias for @cloudfunctions.projects.locations.functions.call@ method which the
-- 'ProjectsLocationsFunctionsCall' request conforms to.
type ProjectsLocationsFunctionsCallResource =
     "v1" :>
       CaptureMode "name" "call" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CallFunctionRequest :>
                       Post '[JSON] CallFunctionResponse

-- | Synchronously invokes a deployed Cloud Function. To be used for testing
-- purposes as very limited traffic is allowed. For more information on the
-- actual limits, refer to [Rate
-- Limits](https:\/\/cloud.google.com\/functions\/quotas#rate_limits).
--
-- /See:/ 'projectsLocationsFunctionsCall' smart constructor.
data ProjectsLocationsFunctionsCall =
  ProjectsLocationsFunctionsCall'
    { _pXgafv :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pPayload :: !CallFunctionRequest
    , _pName :: !Text
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsFunctionsCall' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pName'
--
-- * 'pCallback'
projectsLocationsFunctionsCall
    :: CallFunctionRequest -- ^ 'pPayload'
    -> Text -- ^ 'pName'
    -> ProjectsLocationsFunctionsCall
projectsLocationsFunctionsCall pPPayload_ pPName_ =
  ProjectsLocationsFunctionsCall'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pName = pPName_
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' ProjectsLocationsFunctionsCall (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsLocationsFunctionsCall (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsLocationsFunctionsCall (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsLocationsFunctionsCall (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsLocationsFunctionsCall CallFunctionRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | Required. The name of the function to be called.
pName :: Lens' ProjectsLocationsFunctionsCall Text
pName = lens _pName (\ s a -> s{_pName = a})

-- | JSONP
pCallback :: Lens' ProjectsLocationsFunctionsCall (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsLocationsFunctionsCall
         where
        type Rs ProjectsLocationsFunctionsCall =
             CallFunctionResponse
        type Scopes ProjectsLocationsFunctionsCall =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsFunctionsCall'{..}
          = go _pName _pXgafv _pUploadProtocol _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              _pPayload
              cloudFunctionsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsFunctionsCallResource)
                      mempty
