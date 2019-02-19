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
-- Module      : Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an attestor. Returns NOT_FOUND if the attestor does not exist.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.delete@.
module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Delete
    (
    -- * REST Resource
      ProjectsAttestorsDeleteResource

    -- * Creating a Request
    , projectsAttestorsDelete
    , ProjectsAttestorsDelete

    -- * Request Lenses
    , padXgafv
    , padUploadProtocol
    , padAccessToken
    , padUploadType
    , padName
    , padCallback
    ) where

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude

-- | A resource alias for @binaryauthorization.projects.attestors.delete@ method which the
-- 'ProjectsAttestorsDelete' request conforms to.
type ProjectsAttestorsDeleteResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an attestor. Returns NOT_FOUND if the attestor does not exist.
--
-- /See:/ 'projectsAttestorsDelete' smart constructor.
data ProjectsAttestorsDelete =
  ProjectsAttestorsDelete'
    { _padXgafv          :: !(Maybe Xgafv)
    , _padUploadProtocol :: !(Maybe Text)
    , _padAccessToken    :: !(Maybe Text)
    , _padUploadType     :: !(Maybe Text)
    , _padName           :: !Text
    , _padCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAttestorsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'padXgafv'
--
-- * 'padUploadProtocol'
--
-- * 'padAccessToken'
--
-- * 'padUploadType'
--
-- * 'padName'
--
-- * 'padCallback'
projectsAttestorsDelete
    :: Text -- ^ 'padName'
    -> ProjectsAttestorsDelete
projectsAttestorsDelete pPadName_ =
  ProjectsAttestorsDelete'
    { _padXgafv = Nothing
    , _padUploadProtocol = Nothing
    , _padAccessToken = Nothing
    , _padUploadType = Nothing
    , _padName = pPadName_
    , _padCallback = Nothing
    }


-- | V1 error format.
padXgafv :: Lens' ProjectsAttestorsDelete (Maybe Xgafv)
padXgafv = lens _padXgafv (\ s a -> s{_padXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
padUploadProtocol :: Lens' ProjectsAttestorsDelete (Maybe Text)
padUploadProtocol
  = lens _padUploadProtocol
      (\ s a -> s{_padUploadProtocol = a})

-- | OAuth access token.
padAccessToken :: Lens' ProjectsAttestorsDelete (Maybe Text)
padAccessToken
  = lens _padAccessToken
      (\ s a -> s{_padAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
padUploadType :: Lens' ProjectsAttestorsDelete (Maybe Text)
padUploadType
  = lens _padUploadType
      (\ s a -> s{_padUploadType = a})

-- | Required. The name of the attestors to delete, in the format
-- \`projects\/*\/attestors\/*\`.
padName :: Lens' ProjectsAttestorsDelete Text
padName = lens _padName (\ s a -> s{_padName = a})

-- | JSONP
padCallback :: Lens' ProjectsAttestorsDelete (Maybe Text)
padCallback
  = lens _padCallback (\ s a -> s{_padCallback = a})

instance GoogleRequest ProjectsAttestorsDelete where
        type Rs ProjectsAttestorsDelete = Empty
        type Scopes ProjectsAttestorsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsAttestorsDelete'{..}
          = go _padName _padXgafv _padUploadProtocol
              _padAccessToken
              _padUploadType
              _padCallback
              (Just AltJSON)
              binaryAuthorizationService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAttestorsDeleteResource)
                      mempty
