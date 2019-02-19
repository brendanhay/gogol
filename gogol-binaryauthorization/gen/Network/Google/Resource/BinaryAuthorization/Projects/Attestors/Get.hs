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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an attestor. Returns NOT_FOUND if the attestor does not exist.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.get@.
module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Get
    (
    -- * REST Resource
      ProjectsAttestorsGetResource

    -- * Creating a Request
    , projectsAttestorsGet
    , ProjectsAttestorsGet

    -- * Request Lenses
    , pagXgafv
    , pagUploadProtocol
    , pagAccessToken
    , pagUploadType
    , pagName
    , pagCallback
    ) where

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.attestors.get@ method which the
-- 'ProjectsAttestorsGet' request conforms to.
type ProjectsAttestorsGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Attestor

-- | Gets an attestor. Returns NOT_FOUND if the attestor does not exist.
--
-- /See:/ 'projectsAttestorsGet' smart constructor.
data ProjectsAttestorsGet =
  ProjectsAttestorsGet'
    { _pagXgafv          :: !(Maybe Xgafv)
    , _pagUploadProtocol :: !(Maybe Text)
    , _pagAccessToken    :: !(Maybe Text)
    , _pagUploadType     :: !(Maybe Text)
    , _pagName           :: !Text
    , _pagCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAttestorsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pagXgafv'
--
-- * 'pagUploadProtocol'
--
-- * 'pagAccessToken'
--
-- * 'pagUploadType'
--
-- * 'pagName'
--
-- * 'pagCallback'
projectsAttestorsGet
    :: Text -- ^ 'pagName'
    -> ProjectsAttestorsGet
projectsAttestorsGet pPagName_ =
  ProjectsAttestorsGet'
    { _pagXgafv = Nothing
    , _pagUploadProtocol = Nothing
    , _pagAccessToken = Nothing
    , _pagUploadType = Nothing
    , _pagName = pPagName_
    , _pagCallback = Nothing
    }

-- | V1 error format.
pagXgafv :: Lens' ProjectsAttestorsGet (Maybe Xgafv)
pagXgafv = lens _pagXgafv (\ s a -> s{_pagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pagUploadProtocol :: Lens' ProjectsAttestorsGet (Maybe Text)
pagUploadProtocol
  = lens _pagUploadProtocol
      (\ s a -> s{_pagUploadProtocol = a})

-- | OAuth access token.
pagAccessToken :: Lens' ProjectsAttestorsGet (Maybe Text)
pagAccessToken
  = lens _pagAccessToken
      (\ s a -> s{_pagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pagUploadType :: Lens' ProjectsAttestorsGet (Maybe Text)
pagUploadType
  = lens _pagUploadType
      (\ s a -> s{_pagUploadType = a})

-- | Required. The name of the attestor to retrieve, in the format
-- \`projects\/*\/attestors\/*\`.
pagName :: Lens' ProjectsAttestorsGet Text
pagName = lens _pagName (\ s a -> s{_pagName = a})

-- | JSONP
pagCallback :: Lens' ProjectsAttestorsGet (Maybe Text)
pagCallback
  = lens _pagCallback (\ s a -> s{_pagCallback = a})

instance GoogleRequest ProjectsAttestorsGet where
        type Rs ProjectsAttestorsGet = Attestor
        type Scopes ProjectsAttestorsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsAttestorsGet'{..}
          = go _pagName _pagXgafv _pagUploadProtocol
              _pagAccessToken
              _pagUploadType
              _pagCallback
              (Just AltJSON)
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAttestorsGetResource)
                      mempty
