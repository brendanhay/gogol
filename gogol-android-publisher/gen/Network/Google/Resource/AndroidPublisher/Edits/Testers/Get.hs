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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Testers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.testers.get@.
module Network.Google.Resource.AndroidPublisher.Edits.Testers.Get
    (
    -- * REST Resource
      EditsTestersGetResource

    -- * Creating a Request
    , editsTestersGet
    , EditsTestersGet

    -- * Request Lenses
    , etgTrack
    , etgPackageName
    , etgEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.testers.get@ method which the
-- 'EditsTestersGet' request conforms to.
type EditsTestersGetResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "testers" :>
                   Capture "track" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Testers

--
-- /See:/ 'editsTestersGet' smart constructor.
data EditsTestersGet =
  EditsTestersGet'
    { _etgTrack       :: !Text
    , _etgPackageName :: !Text
    , _etgEditId      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsTestersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etgTrack'
--
-- * 'etgPackageName'
--
-- * 'etgEditId'
editsTestersGet
    :: Text -- ^ 'etgTrack'
    -> Text -- ^ 'etgPackageName'
    -> Text -- ^ 'etgEditId'
    -> EditsTestersGet
editsTestersGet pEtgTrack_ pEtgPackageName_ pEtgEditId_ =
  EditsTestersGet'
    { _etgTrack = pEtgTrack_
    , _etgPackageName = pEtgPackageName_
    , _etgEditId = pEtgEditId_
    }


-- | The track to read or modify. Acceptable values are: \"alpha\", \"beta\",
-- \"production\", \"rollout\" or \"internal\".
etgTrack :: Lens' EditsTestersGet Text
etgTrack = lens _etgTrack (\ s a -> s{_etgTrack = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etgPackageName :: Lens' EditsTestersGet Text
etgPackageName
  = lens _etgPackageName
      (\ s a -> s{_etgPackageName = a})

-- | Unique identifier for this edit.
etgEditId :: Lens' EditsTestersGet Text
etgEditId
  = lens _etgEditId (\ s a -> s{_etgEditId = a})

instance GoogleRequest EditsTestersGet where
        type Rs EditsTestersGet = Testers
        type Scopes EditsTestersGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsTestersGet'{..}
          = go _etgPackageName _etgEditId _etgTrack
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTestersGetResource)
                      mempty
