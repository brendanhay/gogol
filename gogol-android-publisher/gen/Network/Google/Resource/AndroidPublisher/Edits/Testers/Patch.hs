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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Testers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsTestersPatch@.
module Network.Google.Resource.AndroidPublisher.Edits.Testers.Patch
    (
    -- * REST Resource
      EditsTestersPatchResource

    -- * Creating a Request
    , editsTestersPatch'
    , EditsTestersPatch'

    -- * Request Lenses
    , etptTrack
    , etptPackageName
    , etptPayload
    , etptEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsTestersPatch@ method which the
-- 'EditsTestersPatch'' request conforms to.
type EditsTestersPatchResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "testers" :>
             Capture "track" EditsTestersPatchTrack :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Testers :> Patch '[JSON] Testers

--
-- /See:/ 'editsTestersPatch'' smart constructor.
data EditsTestersPatch' = EditsTestersPatch'
    { _etptTrack       :: !EditsTestersPatchTrack
    , _etptPackageName :: !Text
    , _etptPayload     :: !Testers
    , _etptEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTestersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etptTrack'
--
-- * 'etptPackageName'
--
-- * 'etptPayload'
--
-- * 'etptEditId'
editsTestersPatch'
    :: EditsTestersPatchTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Testers -- ^ 'payload'
    -> Text -- ^ 'editId'
    -> EditsTestersPatch'
editsTestersPatch' pEtptTrack_ pEtptPackageName_ pEtptPayload_ pEtptEditId_ =
    EditsTestersPatch'
    { _etptTrack = pEtptTrack_
    , _etptPackageName = pEtptPackageName_
    , _etptPayload = pEtptPayload_
    , _etptEditId = pEtptEditId_
    }

etptTrack :: Lens' EditsTestersPatch' EditsTestersPatchTrack
etptTrack
  = lens _etptTrack (\ s a -> s{_etptTrack = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etptPackageName :: Lens' EditsTestersPatch' Text
etptPackageName
  = lens _etptPackageName
      (\ s a -> s{_etptPackageName = a})

-- | Multipart request metadata.
etptPayload :: Lens' EditsTestersPatch' Testers
etptPayload
  = lens _etptPayload (\ s a -> s{_etptPayload = a})

-- | Unique identifier for this edit.
etptEditId :: Lens' EditsTestersPatch' Text
etptEditId
  = lens _etptEditId (\ s a -> s{_etptEditId = a})

instance GoogleRequest EditsTestersPatch' where
        type Rs EditsTestersPatch' = Testers
        requestClient EditsTestersPatch'{..}
          = go _etptPackageName _etptEditId _etptTrack
              (Just AltJSON)
              _etptPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTestersPatchResource)
                      mempty
