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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Testers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.testers.update@.
module Network.Google.Resource.AndroidPublisher.Edits.Testers.Update
    (
    -- * REST Resource
      EditsTestersUpdateResource

    -- * Creating a Request
    , editsTestersUpdate'
    , EditsTestersUpdate'

    -- * Request Lenses
    , etutTrack
    , etutPackageName
    , etutPayload
    , etutEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.testers.update@ method which the
-- 'EditsTestersUpdate'' request conforms to.
type EditsTestersUpdateResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "testers" :>
             Capture "track" EditsTestersUpdateTrack :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Testers :> Put '[JSON] Testers

--
-- /See:/ 'editsTestersUpdate'' smart constructor.
data EditsTestersUpdate' = EditsTestersUpdate'
    { _etutTrack       :: !EditsTestersUpdateTrack
    , _etutPackageName :: !Text
    , _etutPayload     :: !Testers
    , _etutEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTestersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etutTrack'
--
-- * 'etutPackageName'
--
-- * 'etutPayload'
--
-- * 'etutEditId'
editsTestersUpdate'
    :: EditsTestersUpdateTrack -- ^ 'etutTrack'
    -> Text -- ^ 'etutPackageName'
    -> Testers -- ^ 'etutPayload'
    -> Text -- ^ 'etutEditId'
    -> EditsTestersUpdate'
editsTestersUpdate' pEtutTrack_ pEtutPackageName_ pEtutPayload_ pEtutEditId_ =
    EditsTestersUpdate'
    { _etutTrack = pEtutTrack_
    , _etutPackageName = pEtutPackageName_
    , _etutPayload = pEtutPayload_
    , _etutEditId = pEtutEditId_
    }

etutTrack :: Lens' EditsTestersUpdate' EditsTestersUpdateTrack
etutTrack
  = lens _etutTrack (\ s a -> s{_etutTrack = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etutPackageName :: Lens' EditsTestersUpdate' Text
etutPackageName
  = lens _etutPackageName
      (\ s a -> s{_etutPackageName = a})

-- | Multipart request metadata.
etutPayload :: Lens' EditsTestersUpdate' Testers
etutPayload
  = lens _etutPayload (\ s a -> s{_etutPayload = a})

-- | Unique identifier for this edit.
etutEditId :: Lens' EditsTestersUpdate' Text
etutEditId
  = lens _etutEditId (\ s a -> s{_etutEditId = a})

instance GoogleRequest EditsTestersUpdate' where
        type Rs EditsTestersUpdate' = Testers
        requestClient EditsTestersUpdate'{..}
          = go _etutPackageName _etutEditId _etutTrack
              (Just AltJSON)
              _etutPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTestersUpdateResource)
                      mempty
