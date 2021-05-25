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
-- Module      : Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates existing function.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.patch@.
module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Patch
    (
    -- * REST Resource
      ProjectsLocationsFunctionsPatchResource

    -- * Creating a Request
    , projectsLocationsFunctionsPatch
    , ProjectsLocationsFunctionsPatch

    -- * Request Lenses
    , plfpXgafv
    , plfpUploadProtocol
    , plfpUpdateMask
    , plfpAccessToken
    , plfpUploadType
    , plfpPayload
    , plfpName
    , plfpCallback
    ) where

import Network.Google.CloudFunctions.Types
import Network.Google.Prelude

-- | A resource alias for @cloudfunctions.projects.locations.functions.patch@ method which the
-- 'ProjectsLocationsFunctionsPatch' request conforms to.
type ProjectsLocationsFunctionsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CloudFunction :>
                         Patch '[JSON] Operation

-- | Updates existing function.
--
-- /See:/ 'projectsLocationsFunctionsPatch' smart constructor.
data ProjectsLocationsFunctionsPatch =
  ProjectsLocationsFunctionsPatch'
    { _plfpXgafv :: !(Maybe Xgafv)
    , _plfpUploadProtocol :: !(Maybe Text)
    , _plfpUpdateMask :: !(Maybe GFieldMask)
    , _plfpAccessToken :: !(Maybe Text)
    , _plfpUploadType :: !(Maybe Text)
    , _plfpPayload :: !CloudFunction
    , _plfpName :: !Text
    , _plfpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsFunctionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plfpXgafv'
--
-- * 'plfpUploadProtocol'
--
-- * 'plfpUpdateMask'
--
-- * 'plfpAccessToken'
--
-- * 'plfpUploadType'
--
-- * 'plfpPayload'
--
-- * 'plfpName'
--
-- * 'plfpCallback'
projectsLocationsFunctionsPatch
    :: CloudFunction -- ^ 'plfpPayload'
    -> Text -- ^ 'plfpName'
    -> ProjectsLocationsFunctionsPatch
projectsLocationsFunctionsPatch pPlfpPayload_ pPlfpName_ =
  ProjectsLocationsFunctionsPatch'
    { _plfpXgafv = Nothing
    , _plfpUploadProtocol = Nothing
    , _plfpUpdateMask = Nothing
    , _plfpAccessToken = Nothing
    , _plfpUploadType = Nothing
    , _plfpPayload = pPlfpPayload_
    , _plfpName = pPlfpName_
    , _plfpCallback = Nothing
    }


-- | V1 error format.
plfpXgafv :: Lens' ProjectsLocationsFunctionsPatch (Maybe Xgafv)
plfpXgafv
  = lens _plfpXgafv (\ s a -> s{_plfpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plfpUploadProtocol :: Lens' ProjectsLocationsFunctionsPatch (Maybe Text)
plfpUploadProtocol
  = lens _plfpUploadProtocol
      (\ s a -> s{_plfpUploadProtocol = a})

-- | Required list of fields to be updated in this request.
plfpUpdateMask :: Lens' ProjectsLocationsFunctionsPatch (Maybe GFieldMask)
plfpUpdateMask
  = lens _plfpUpdateMask
      (\ s a -> s{_plfpUpdateMask = a})

-- | OAuth access token.
plfpAccessToken :: Lens' ProjectsLocationsFunctionsPatch (Maybe Text)
plfpAccessToken
  = lens _plfpAccessToken
      (\ s a -> s{_plfpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plfpUploadType :: Lens' ProjectsLocationsFunctionsPatch (Maybe Text)
plfpUploadType
  = lens _plfpUploadType
      (\ s a -> s{_plfpUploadType = a})

-- | Multipart request metadata.
plfpPayload :: Lens' ProjectsLocationsFunctionsPatch CloudFunction
plfpPayload
  = lens _plfpPayload (\ s a -> s{_plfpPayload = a})

-- | A user-defined name of the function. Function names must be unique
-- globally and match pattern \`projects\/*\/locations\/*\/functions\/*\`
plfpName :: Lens' ProjectsLocationsFunctionsPatch Text
plfpName = lens _plfpName (\ s a -> s{_plfpName = a})

-- | JSONP
plfpCallback :: Lens' ProjectsLocationsFunctionsPatch (Maybe Text)
plfpCallback
  = lens _plfpCallback (\ s a -> s{_plfpCallback = a})

instance GoogleRequest
           ProjectsLocationsFunctionsPatch
         where
        type Rs ProjectsLocationsFunctionsPatch = Operation
        type Scopes ProjectsLocationsFunctionsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsFunctionsPatch'{..}
          = go _plfpName _plfpXgafv _plfpUploadProtocol
              _plfpUpdateMask
              _plfpAccessToken
              _plfpUploadType
              _plfpCallback
              (Just AltJSON)
              _plfpPayload
              cloudFunctionsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsFunctionsPatchResource)
                      mempty
