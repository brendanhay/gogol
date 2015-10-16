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
-- Module      : Network.Google.Resource.Directory.Groups.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Group. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsPatch@.
module Network.Google.Resource.Directory.Groups.Patch
    (
    -- * REST Resource
      GroupsPatchResource

    -- * Creating a Request
    , groupsPatch'
    , GroupsPatch'

    -- * Request Lenses
    , gpGroupKey
    , gpPayload
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsPatch@ method which the
-- 'GroupsPatch'' request conforms to.
type GroupsPatchResource =
     "groups" :>
       Capture "groupKey" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Group :> Patch '[JSON] Group

-- | Update Group. This method supports patch semantics.
--
-- /See:/ 'groupsPatch'' smart constructor.
data GroupsPatch' = GroupsPatch'
    { _gpGroupKey :: !Text
    , _gpPayload  :: !Group
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpGroupKey'
--
-- * 'gpPayload'
groupsPatch'
    :: Text -- ^ 'groupKey'
    -> Group -- ^ 'payload'
    -> GroupsPatch'
groupsPatch' pGpGroupKey_ pGpPayload_ =
    GroupsPatch'
    { _gpGroupKey = pGpGroupKey_
    , _gpPayload = pGpPayload_
    }

-- | Email or immutable Id of the group. If Id, it should match with id of
-- group object
gpGroupKey :: Lens' GroupsPatch' Text
gpGroupKey
  = lens _gpGroupKey (\ s a -> s{_gpGroupKey = a})

-- | Multipart request metadata.
gpPayload :: Lens' GroupsPatch' Group
gpPayload
  = lens _gpPayload (\ s a -> s{_gpPayload = a})

instance GoogleRequest GroupsPatch' where
        type Rs GroupsPatch' = Group
        requestClient GroupsPatch'{..}
          = go _gpGroupKey (Just AltJSON) _gpPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy GroupsPatchResource)
                      mempty
