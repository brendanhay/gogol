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
-- Module      : Network.Google.Resource.Directory.Groups.Aliases.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an alias.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.groups.aliases.delete@.
module Network.Google.Resource.Directory.Groups.Aliases.Delete
    (
    -- * REST Resource
      GroupsAliasesDeleteResource

    -- * Creating a Request
    , groupsAliasesDelete
    , GroupsAliasesDelete

    -- * Request Lenses
    , gadXgafv
    , gadUploadProtocol
    , gadAccessToken
    , gadGroupKey
    , gadUploadType
    , gadAlias
    , gadCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.groups.aliases.delete@ method which the
-- 'GroupsAliasesDelete' request conforms to.
type GroupsAliasesDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "aliases" :>
                 Capture "alias" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes an alias.
--
-- /See:/ 'groupsAliasesDelete' smart constructor.
data GroupsAliasesDelete =
  GroupsAliasesDelete'
    { _gadXgafv :: !(Maybe Xgafv)
    , _gadUploadProtocol :: !(Maybe Text)
    , _gadAccessToken :: !(Maybe Text)
    , _gadGroupKey :: !Text
    , _gadUploadType :: !(Maybe Text)
    , _gadAlias :: !Text
    , _gadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsAliasesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gadXgafv'
--
-- * 'gadUploadProtocol'
--
-- * 'gadAccessToken'
--
-- * 'gadGroupKey'
--
-- * 'gadUploadType'
--
-- * 'gadAlias'
--
-- * 'gadCallback'
groupsAliasesDelete
    :: Text -- ^ 'gadGroupKey'
    -> Text -- ^ 'gadAlias'
    -> GroupsAliasesDelete
groupsAliasesDelete pGadGroupKey_ pGadAlias_ =
  GroupsAliasesDelete'
    { _gadXgafv = Nothing
    , _gadUploadProtocol = Nothing
    , _gadAccessToken = Nothing
    , _gadGroupKey = pGadGroupKey_
    , _gadUploadType = Nothing
    , _gadAlias = pGadAlias_
    , _gadCallback = Nothing
    }


-- | V1 error format.
gadXgafv :: Lens' GroupsAliasesDelete (Maybe Xgafv)
gadXgafv = lens _gadXgafv (\ s a -> s{_gadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gadUploadProtocol :: Lens' GroupsAliasesDelete (Maybe Text)
gadUploadProtocol
  = lens _gadUploadProtocol
      (\ s a -> s{_gadUploadProtocol = a})

-- | OAuth access token.
gadAccessToken :: Lens' GroupsAliasesDelete (Maybe Text)
gadAccessToken
  = lens _gadAccessToken
      (\ s a -> s{_gadAccessToken = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
gadGroupKey :: Lens' GroupsAliasesDelete Text
gadGroupKey
  = lens _gadGroupKey (\ s a -> s{_gadGroupKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gadUploadType :: Lens' GroupsAliasesDelete (Maybe Text)
gadUploadType
  = lens _gadUploadType
      (\ s a -> s{_gadUploadType = a})

-- | The alias to be removed
gadAlias :: Lens' GroupsAliasesDelete Text
gadAlias = lens _gadAlias (\ s a -> s{_gadAlias = a})

-- | JSONP
gadCallback :: Lens' GroupsAliasesDelete (Maybe Text)
gadCallback
  = lens _gadCallback (\ s a -> s{_gadCallback = a})

instance GoogleRequest GroupsAliasesDelete where
        type Rs GroupsAliasesDelete = ()
        type Scopes GroupsAliasesDelete =
             '["https://www.googleapis.com/auth/admin.directory.group"]
        requestClient GroupsAliasesDelete'{..}
          = go _gadGroupKey _gadAlias _gadXgafv
              _gadUploadProtocol
              _gadAccessToken
              _gadUploadType
              _gadCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsAliasesDeleteResource)
                      mempty
