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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an edit for an app. Creating a new edit will automatically
-- delete any of your previous edits so this method need only be called if
-- you want to preemptively abandon an edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.delete@.
module Network.Google.Resource.AndroidPublisher.Edits.Delete
    (
    -- * REST Resource
      EditsDeleteResource

    -- * Creating a Request
    , editsDelete
    , EditsDelete

    -- * Request Lenses
    , edPackageName
    , edEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.delete@ method which the
-- 'EditsDelete' request conforms to.
type EditsDeleteResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an edit for an app. Creating a new edit will automatically
-- delete any of your previous edits so this method need only be called if
-- you want to preemptively abandon an edit.
--
-- /See:/ 'editsDelete' smart constructor.
data EditsDelete =
  EditsDelete'
    { _edPackageName :: !Text
    , _edEditId      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edPackageName'
--
-- * 'edEditId'
editsDelete
    :: Text -- ^ 'edPackageName'
    -> Text -- ^ 'edEditId'
    -> EditsDelete
editsDelete pEdPackageName_ pEdEditId_ =
  EditsDelete' {_edPackageName = pEdPackageName_, _edEditId = pEdEditId_}


-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
edPackageName :: Lens' EditsDelete Text
edPackageName
  = lens _edPackageName
      (\ s a -> s{_edPackageName = a})

-- | Unique identifier for this edit.
edEditId :: Lens' EditsDelete Text
edEditId = lens _edEditId (\ s a -> s{_edEditId = a})

instance GoogleRequest EditsDelete where
        type Rs EditsDelete = ()
        type Scopes EditsDelete =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsDelete'{..}
          = go _edPackageName _edEditId (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsDeleteResource)
                      mempty
