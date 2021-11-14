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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Group.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.create@.
module Network.Google.Resource.CloudIdentity.Groups.Create
    (
    -- * REST Resource
      GroupsCreateResource

    -- * Creating a Request
    , groupsCreate
    , GroupsCreate

    -- * Request Lenses
    , gcXgafv
    , gcUploadProtocol
    , gcAccessToken
    , gcInitialGroupConfig
    , gcUploadType
    , gcPayload
    , gcCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.create@ method which the
-- 'GroupsCreate' request conforms to.
type GroupsCreateResource =
     "v1" :>
       "groups" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "initialGroupConfig"
                 GroupsCreateInitialGroupConfig
                 :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Group :> Post '[JSON] Operation

-- | Creates a Group.
--
-- /See:/ 'groupsCreate' smart constructor.
data GroupsCreate =
  GroupsCreate'
    { _gcXgafv :: !(Maybe Xgafv)
    , _gcUploadProtocol :: !(Maybe Text)
    , _gcAccessToken :: !(Maybe Text)
    , _gcInitialGroupConfig :: !(Maybe GroupsCreateInitialGroupConfig)
    , _gcUploadType :: !(Maybe Text)
    , _gcPayload :: !Group
    , _gcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcXgafv'
--
-- * 'gcUploadProtocol'
--
-- * 'gcAccessToken'
--
-- * 'gcInitialGroupConfig'
--
-- * 'gcUploadType'
--
-- * 'gcPayload'
--
-- * 'gcCallback'
groupsCreate
    :: Group -- ^ 'gcPayload'
    -> GroupsCreate
groupsCreate pGcPayload_ =
  GroupsCreate'
    { _gcXgafv = Nothing
    , _gcUploadProtocol = Nothing
    , _gcAccessToken = Nothing
    , _gcInitialGroupConfig = Nothing
    , _gcUploadType = Nothing
    , _gcPayload = pGcPayload_
    , _gcCallback = Nothing
    }


-- | V1 error format.
gcXgafv :: Lens' GroupsCreate (Maybe Xgafv)
gcXgafv = lens _gcXgafv (\ s a -> s{_gcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gcUploadProtocol :: Lens' GroupsCreate (Maybe Text)
gcUploadProtocol
  = lens _gcUploadProtocol
      (\ s a -> s{_gcUploadProtocol = a})

-- | OAuth access token.
gcAccessToken :: Lens' GroupsCreate (Maybe Text)
gcAccessToken
  = lens _gcAccessToken
      (\ s a -> s{_gcAccessToken = a})

-- | Optional. The initial configuration option for the \`Group\`.
gcInitialGroupConfig :: Lens' GroupsCreate (Maybe GroupsCreateInitialGroupConfig)
gcInitialGroupConfig
  = lens _gcInitialGroupConfig
      (\ s a -> s{_gcInitialGroupConfig = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gcUploadType :: Lens' GroupsCreate (Maybe Text)
gcUploadType
  = lens _gcUploadType (\ s a -> s{_gcUploadType = a})

-- | Multipart request metadata.
gcPayload :: Lens' GroupsCreate Group
gcPayload
  = lens _gcPayload (\ s a -> s{_gcPayload = a})

-- | JSONP
gcCallback :: Lens' GroupsCreate (Maybe Text)
gcCallback
  = lens _gcCallback (\ s a -> s{_gcCallback = a})

instance GoogleRequest GroupsCreate where
        type Rs GroupsCreate = Operation
        type Scopes GroupsCreate =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient GroupsCreate'{..}
          = go _gcXgafv _gcUploadProtocol _gcAccessToken
              _gcInitialGroupConfig
              _gcUploadType
              _gcCallback
              (Just AltJSON)
              _gcPayload
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy GroupsCreateResource)
                      mempty
