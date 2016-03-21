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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.testers.patch@.
module Network.Google.Resource.AndroidPublisher.Edits.Testers.Patch
    (
    -- * REST Resource
      EditsTestersPatchResource

    -- * Creating a Request
    , editsTestersPatch
    , EditsTestersPatch

    -- * Request Lenses
    , etpTrack
    , etpPackageName
    , etpPayload
    , etpEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.testers.patch@ method which the
-- 'EditsTestersPatch' request conforms to.
type EditsTestersPatchResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "testers" :>
                   Capture "track" EditsTestersPatchTrack :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Testers :> Patch '[JSON] Testers

--
-- /See:/ 'editsTestersPatch' smart constructor.
data EditsTestersPatch = EditsTestersPatch'
    { _etpTrack       :: !EditsTestersPatchTrack
    , _etpPackageName :: !Text
    , _etpPayload     :: !Testers
    , _etpEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTestersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etpTrack'
--
-- * 'etpPackageName'
--
-- * 'etpPayload'
--
-- * 'etpEditId'
editsTestersPatch
    :: EditsTestersPatchTrack -- ^ 'etpTrack'
    -> Text -- ^ 'etpPackageName'
    -> Testers -- ^ 'etpPayload'
    -> Text -- ^ 'etpEditId'
    -> EditsTestersPatch
editsTestersPatch pEtpTrack_ pEtpPackageName_ pEtpPayload_ pEtpEditId_ =
    EditsTestersPatch'
    { _etpTrack = pEtpTrack_
    , _etpPackageName = pEtpPackageName_
    , _etpPayload = pEtpPayload_
    , _etpEditId = pEtpEditId_
    }

etpTrack :: Lens' EditsTestersPatch EditsTestersPatchTrack
etpTrack = lens _etpTrack (\ s a -> s{_etpTrack = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etpPackageName :: Lens' EditsTestersPatch Text
etpPackageName
  = lens _etpPackageName
      (\ s a -> s{_etpPackageName = a})

-- | Multipart request metadata.
etpPayload :: Lens' EditsTestersPatch Testers
etpPayload
  = lens _etpPayload (\ s a -> s{_etpPayload = a})

-- | Unique identifier for this edit.
etpEditId :: Lens' EditsTestersPatch Text
etpEditId
  = lens _etpEditId (\ s a -> s{_etpEditId = a})

instance GoogleRequest EditsTestersPatch where
        type Rs EditsTestersPatch = Testers
        type Scopes EditsTestersPatch =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsTestersPatch'{..}
          = go _etpPackageName _etpEditId _etpTrack
              (Just AltJSON)
              _etpPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTestersPatchResource)
                      mempty
