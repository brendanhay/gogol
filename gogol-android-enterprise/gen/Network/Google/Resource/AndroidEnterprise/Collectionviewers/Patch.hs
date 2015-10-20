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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collectionviewers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collectionviewers.patch@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Patch
    (
    -- * REST Resource
      CollectionviewersPatchResource

    -- * Creating a Request
    , collectionviewersPatch
    , CollectionviewersPatch

    -- * Request Lenses
    , cppEnterpriseId
    , cppCollectionId
    , cppPayload
    , cppUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.collectionviewers.patch@ method which the
-- 'CollectionviewersPatch' request conforms to.
type CollectionviewersPatchResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             "users" :>
               Capture "userId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] User :> Patch '[JSON] User

-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection. This method supports patch
-- semantics.
--
-- /See:/ 'collectionviewersPatch' smart constructor.
data CollectionviewersPatch = CollectionviewersPatch
    { _cppEnterpriseId :: !Text
    , _cppCollectionId :: !Text
    , _cppPayload      :: !User
    , _cppUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cppEnterpriseId'
--
-- * 'cppCollectionId'
--
-- * 'cppPayload'
--
-- * 'cppUserId'
collectionviewersPatch
    :: Text -- ^ 'cppEnterpriseId'
    -> Text -- ^ 'cppCollectionId'
    -> User -- ^ 'cppPayload'
    -> Text -- ^ 'cppUserId'
    -> CollectionviewersPatch
collectionviewersPatch pCppEnterpriseId_ pCppCollectionId_ pCppPayload_ pCppUserId_ =
    CollectionviewersPatch
    { _cppEnterpriseId = pCppEnterpriseId_
    , _cppCollectionId = pCppCollectionId_
    , _cppPayload = pCppPayload_
    , _cppUserId = pCppUserId_
    }

-- | The ID of the enterprise.
cppEnterpriseId :: Lens' CollectionviewersPatch Text
cppEnterpriseId
  = lens _cppEnterpriseId
      (\ s a -> s{_cppEnterpriseId = a})

-- | The ID of the collection.
cppCollectionId :: Lens' CollectionviewersPatch Text
cppCollectionId
  = lens _cppCollectionId
      (\ s a -> s{_cppCollectionId = a})

-- | Multipart request metadata.
cppPayload :: Lens' CollectionviewersPatch User
cppPayload
  = lens _cppPayload (\ s a -> s{_cppPayload = a})

-- | The ID of the user.
cppUserId :: Lens' CollectionviewersPatch Text
cppUserId
  = lens _cppUserId (\ s a -> s{_cppUserId = a})

instance GoogleRequest CollectionviewersPatch where
        type Rs CollectionviewersPatch = User
        requestClient CollectionviewersPatch{..}
          = go _cppEnterpriseId _cppCollectionId _cppUserId
              (Just AltJSON)
              _cppPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionviewersPatchResource)
                      mempty
