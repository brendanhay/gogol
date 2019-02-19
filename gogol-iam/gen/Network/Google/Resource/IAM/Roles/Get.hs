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
-- Module      : Network.Google.Resource.IAM.Roles.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Role definition.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.roles.get@.
module Network.Google.Resource.IAM.Roles.Get
    (
    -- * REST Resource
      RolesGetResource

    -- * Creating a Request
    , rolesGet
    , RolesGet

    -- * Request Lenses
    , rgXgafv
    , rgUploadProtocol
    , rgAccessToken
    , rgUploadType
    , rgName
    , rgCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.roles.get@ method which the
-- 'RolesGet' request conforms to.
type RolesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Role

-- | Gets a Role definition.
--
-- /See:/ 'rolesGet' smart constructor.
data RolesGet =
  RolesGet'
    { _rgXgafv          :: !(Maybe Xgafv)
    , _rgUploadProtocol :: !(Maybe Text)
    , _rgAccessToken    :: !(Maybe Text)
    , _rgUploadType     :: !(Maybe Text)
    , _rgName           :: !Text
    , _rgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RolesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgXgafv'
--
-- * 'rgUploadProtocol'
--
-- * 'rgAccessToken'
--
-- * 'rgUploadType'
--
-- * 'rgName'
--
-- * 'rgCallback'
rolesGet
    :: Text -- ^ 'rgName'
    -> RolesGet
rolesGet pRgName_ =
  RolesGet'
    { _rgXgafv = Nothing
    , _rgUploadProtocol = Nothing
    , _rgAccessToken = Nothing
    , _rgUploadType = Nothing
    , _rgName = pRgName_
    , _rgCallback = Nothing
    }

-- | V1 error format.
rgXgafv :: Lens' RolesGet (Maybe Xgafv)
rgXgafv = lens _rgXgafv (\ s a -> s{_rgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgUploadProtocol :: Lens' RolesGet (Maybe Text)
rgUploadProtocol
  = lens _rgUploadProtocol
      (\ s a -> s{_rgUploadProtocol = a})

-- | OAuth access token.
rgAccessToken :: Lens' RolesGet (Maybe Text)
rgAccessToken
  = lens _rgAccessToken
      (\ s a -> s{_rgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgUploadType :: Lens' RolesGet (Maybe Text)
rgUploadType
  = lens _rgUploadType (\ s a -> s{_rgUploadType = a})

-- | The resource name of the role in one of the following formats:
-- \`roles\/{ROLE_NAME}\`
-- \`organizations\/{ORGANIZATION_ID}\/roles\/{ROLE_NAME}\`
-- \`projects\/{PROJECT_ID}\/roles\/{ROLE_NAME}\`
rgName :: Lens' RolesGet Text
rgName = lens _rgName (\ s a -> s{_rgName = a})

-- | JSONP
rgCallback :: Lens' RolesGet (Maybe Text)
rgCallback
  = lens _rgCallback (\ s a -> s{_rgCallback = a})

instance GoogleRequest RolesGet where
        type Rs RolesGet = Role
        type Scopes RolesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RolesGet'{..}
          = go _rgName _rgXgafv _rgUploadProtocol
              _rgAccessToken
              _rgUploadType
              _rgCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient (Proxy :: Proxy RolesGetResource)
                      mempty
