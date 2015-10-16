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
-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionviewersPatch@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Patch
    (
    -- * REST Resource
      CollectionviewersPatchResource

    -- * Creating a Request
    , collectionviewersPatch'
    , CollectionviewersPatch'

    -- * Request Lenses
    , cpEnterpriseId
    , cpCollectionId
    , cpPayload
    , cpUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionviewersPatch@ method which the
-- 'CollectionviewersPatch'' request conforms to.
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
-- /See:/ 'collectionviewersPatch'' smart constructor.
data CollectionviewersPatch' = CollectionviewersPatch'
    { _cpEnterpriseId :: !Text
    , _cpCollectionId :: !Text
    , _cpPayload      :: !User
    , _cpUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpEnterpriseId'
--
-- * 'cpCollectionId'
--
-- * 'cpPayload'
--
-- * 'cpUserId'
collectionviewersPatch'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> User -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> CollectionviewersPatch'
collectionviewersPatch' pCpEnterpriseId_ pCpCollectionId_ pCpPayload_ pCpUserId_ =
    CollectionviewersPatch'
    { _cpEnterpriseId = pCpEnterpriseId_
    , _cpCollectionId = pCpCollectionId_
    , _cpPayload = pCpPayload_
    , _cpUserId = pCpUserId_
    }

-- | The ID of the enterprise.
cpEnterpriseId :: Lens' CollectionviewersPatch' Text
cpEnterpriseId
  = lens _cpEnterpriseId
      (\ s a -> s{_cpEnterpriseId = a})

-- | The ID of the collection.
cpCollectionId :: Lens' CollectionviewersPatch' Text
cpCollectionId
  = lens _cpCollectionId
      (\ s a -> s{_cpCollectionId = a})

-- | Multipart request metadata.
cpPayload :: Lens' CollectionviewersPatch' User
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | The ID of the user.
cpUserId :: Lens' CollectionviewersPatch' Text
cpUserId = lens _cpUserId (\ s a -> s{_cpUserId = a})

instance GoogleRequest CollectionviewersPatch' where
        type Rs CollectionviewersPatch' = User
        requestClient CollectionviewersPatch'{..}
          = go _cpEnterpriseId _cpCollectionId _cpUserId
              (Just AltJSON)
              _cpPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionviewersPatchResource)
                      mempty
