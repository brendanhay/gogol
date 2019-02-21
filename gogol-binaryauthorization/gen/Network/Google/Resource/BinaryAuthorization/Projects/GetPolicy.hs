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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.GetPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the policy for this project. Returns a default policy if the
-- project does not have one.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.getPolicy@.
module Network.Google.Resource.BinaryAuthorization.Projects.GetPolicy
    (
    -- * REST Resource
      ProjectsGetPolicyResource

    -- * Creating a Request
    , projectsGetPolicy
    , ProjectsGetPolicy

    -- * Request Lenses
    , pgpXgafv
    , pgpUploadProtocol
    , pgpAccessToken
    , pgpUploadType
    , pgpName
    , pgpCallback
    ) where

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.getPolicy@ method which the
-- 'ProjectsGetPolicy' request conforms to.
type ProjectsGetPolicyResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the policy for this project. Returns a default policy if the
-- project does not have one.
--
-- /See:/ 'projectsGetPolicy' smart constructor.
data ProjectsGetPolicy =
  ProjectsGetPolicy'
    { _pgpXgafv          :: !(Maybe Xgafv)
    , _pgpUploadProtocol :: !(Maybe Text)
    , _pgpAccessToken    :: !(Maybe Text)
    , _pgpUploadType     :: !(Maybe Text)
    , _pgpName           :: !Text
    , _pgpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGetPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgpXgafv'
--
-- * 'pgpUploadProtocol'
--
-- * 'pgpAccessToken'
--
-- * 'pgpUploadType'
--
-- * 'pgpName'
--
-- * 'pgpCallback'
projectsGetPolicy
    :: Text -- ^ 'pgpName'
    -> ProjectsGetPolicy
projectsGetPolicy pPgpName_ =
  ProjectsGetPolicy'
    { _pgpXgafv = Nothing
    , _pgpUploadProtocol = Nothing
    , _pgpAccessToken = Nothing
    , _pgpUploadType = Nothing
    , _pgpName = pPgpName_
    , _pgpCallback = Nothing
    }


-- | V1 error format.
pgpXgafv :: Lens' ProjectsGetPolicy (Maybe Xgafv)
pgpXgafv = lens _pgpXgafv (\ s a -> s{_pgpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgpUploadProtocol :: Lens' ProjectsGetPolicy (Maybe Text)
pgpUploadProtocol
  = lens _pgpUploadProtocol
      (\ s a -> s{_pgpUploadProtocol = a})

-- | OAuth access token.
pgpAccessToken :: Lens' ProjectsGetPolicy (Maybe Text)
pgpAccessToken
  = lens _pgpAccessToken
      (\ s a -> s{_pgpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgpUploadType :: Lens' ProjectsGetPolicy (Maybe Text)
pgpUploadType
  = lens _pgpUploadType
      (\ s a -> s{_pgpUploadType = a})

-- | Required. The resource name of the policy to retrieve, in the format
-- \`projects\/*\/policy\`.
pgpName :: Lens' ProjectsGetPolicy Text
pgpName = lens _pgpName (\ s a -> s{_pgpName = a})

-- | JSONP
pgpCallback :: Lens' ProjectsGetPolicy (Maybe Text)
pgpCallback
  = lens _pgpCallback (\ s a -> s{_pgpCallback = a})

instance GoogleRequest ProjectsGetPolicy where
        type Rs ProjectsGetPolicy = Policy
        type Scopes ProjectsGetPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsGetPolicy'{..}
          = go _pgpName _pgpXgafv _pgpUploadProtocol
              _pgpAccessToken
              _pgpUploadType
              _pgpCallback
              (Just AltJSON)
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGetPolicyResource)
                      mempty
