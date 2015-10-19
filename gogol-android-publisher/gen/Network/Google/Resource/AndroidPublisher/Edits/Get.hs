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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the edit specified. Calls will fail if the
-- edit is no long active (e.g. has been deleted, superseded or expired).
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.get@.
module Network.Google.Resource.AndroidPublisher.Edits.Get
    (
    -- * REST Resource
      EditsGetResource

    -- * Creating a Request
    , editsGet'
    , EditsGet'

    -- * Request Lenses
    , egPackageName
    , egEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.get@ method which the
-- 'EditsGet'' request conforms to.
type EditsGetResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] AppEdit

-- | Returns information about the edit specified. Calls will fail if the
-- edit is no long active (e.g. has been deleted, superseded or expired).
--
-- /See:/ 'editsGet'' smart constructor.
data EditsGet' = EditsGet'
    { _egPackageName :: !Text
    , _egEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egPackageName'
--
-- * 'egEditId'
editsGet'
    :: Text -- ^ 'egPackageName'
    -> Text -- ^ 'egEditId'
    -> EditsGet'
editsGet' pEgPackageName_ pEgEditId_ =
    EditsGet'
    { _egPackageName = pEgPackageName_
    , _egEditId = pEgEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
egPackageName :: Lens' EditsGet' Text
egPackageName
  = lens _egPackageName
      (\ s a -> s{_egPackageName = a})

-- | Unique identifier for this edit.
egEditId :: Lens' EditsGet' Text
egEditId = lens _egEditId (\ s a -> s{_egEditId = a})

instance GoogleRequest EditsGet' where
        type Rs EditsGet' = AppEdit
        requestClient EditsGet'{..}
          = go _egPackageName _egEditId (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsGetResource)
                      mempty
