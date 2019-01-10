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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new edit for an app, populated with the app\'s current state.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.insert@.
module Network.Google.Resource.AndroidPublisher.Edits.Insert
    (
    -- * REST Resource
      EditsInsertResource

    -- * Creating a Request
    , editsInsert
    , EditsInsert

    -- * Request Lenses
    , eiPackageName
    , eiPayload
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.insert@ method which the
-- 'EditsInsert' request conforms to.
type EditsInsertResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] AppEdit :> Post '[JSON] AppEdit

-- | Creates a new edit for an app, populated with the app\'s current state.
--
-- /See:/ 'editsInsert' smart constructor.
data EditsInsert = EditsInsert'
    { _eiPackageName :: !Text
    , _eiPayload     :: !AppEdit
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiPackageName'
--
-- * 'eiPayload'
editsInsert
    :: Text -- ^ 'eiPackageName'
    -> AppEdit -- ^ 'eiPayload'
    -> EditsInsert
editsInsert pEiPackageName_ pEiPayload_ =
    EditsInsert'
    { _eiPackageName = pEiPackageName_
    , _eiPayload = pEiPayload_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eiPackageName :: Lens' EditsInsert Text
eiPackageName
  = lens _eiPackageName
      (\ s a -> s{_eiPackageName = a})

-- | Multipart request metadata.
eiPayload :: Lens' EditsInsert AppEdit
eiPayload
  = lens _eiPayload (\ s a -> s{_eiPayload = a})

instance GoogleRequest EditsInsert where
        type Rs EditsInsert = AppEdit
        type Scopes EditsInsert =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsInsert'{..}
          = go _eiPackageName (Just AltJSON) _eiPayload
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsInsertResource)
                      mempty
