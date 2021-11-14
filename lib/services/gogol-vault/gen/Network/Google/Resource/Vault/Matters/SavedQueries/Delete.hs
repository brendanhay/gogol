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
-- Module      : Network.Google.Resource.Vault.Matters.SavedQueries.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified saved query.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.savedQueries.delete@.
module Network.Google.Resource.Vault.Matters.SavedQueries.Delete
    (
    -- * REST Resource
      MattersSavedQueriesDeleteResource

    -- * Creating a Request
    , mattersSavedQueriesDelete
    , MattersSavedQueriesDelete

    -- * Request Lenses
    , msqdXgafv
    , msqdSavedQueryId
    , msqdUploadProtocol
    , msqdAccessToken
    , msqdUploadType
    , msqdMatterId
    , msqdCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.savedQueries.delete@ method which the
-- 'MattersSavedQueriesDelete' request conforms to.
type MattersSavedQueriesDeleteResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "savedQueries" :>
             Capture "savedQueryId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified saved query.
--
-- /See:/ 'mattersSavedQueriesDelete' smart constructor.
data MattersSavedQueriesDelete =
  MattersSavedQueriesDelete'
    { _msqdXgafv :: !(Maybe Xgafv)
    , _msqdSavedQueryId :: !Text
    , _msqdUploadProtocol :: !(Maybe Text)
    , _msqdAccessToken :: !(Maybe Text)
    , _msqdUploadType :: !(Maybe Text)
    , _msqdMatterId :: !Text
    , _msqdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersSavedQueriesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msqdXgafv'
--
-- * 'msqdSavedQueryId'
--
-- * 'msqdUploadProtocol'
--
-- * 'msqdAccessToken'
--
-- * 'msqdUploadType'
--
-- * 'msqdMatterId'
--
-- * 'msqdCallback'
mattersSavedQueriesDelete
    :: Text -- ^ 'msqdSavedQueryId'
    -> Text -- ^ 'msqdMatterId'
    -> MattersSavedQueriesDelete
mattersSavedQueriesDelete pMsqdSavedQueryId_ pMsqdMatterId_ =
  MattersSavedQueriesDelete'
    { _msqdXgafv = Nothing
    , _msqdSavedQueryId = pMsqdSavedQueryId_
    , _msqdUploadProtocol = Nothing
    , _msqdAccessToken = Nothing
    , _msqdUploadType = Nothing
    , _msqdMatterId = pMsqdMatterId_
    , _msqdCallback = Nothing
    }


-- | V1 error format.
msqdXgafv :: Lens' MattersSavedQueriesDelete (Maybe Xgafv)
msqdXgafv
  = lens _msqdXgafv (\ s a -> s{_msqdXgafv = a})

-- | ID of the saved query to delete.
msqdSavedQueryId :: Lens' MattersSavedQueriesDelete Text
msqdSavedQueryId
  = lens _msqdSavedQueryId
      (\ s a -> s{_msqdSavedQueryId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
msqdUploadProtocol :: Lens' MattersSavedQueriesDelete (Maybe Text)
msqdUploadProtocol
  = lens _msqdUploadProtocol
      (\ s a -> s{_msqdUploadProtocol = a})

-- | OAuth access token.
msqdAccessToken :: Lens' MattersSavedQueriesDelete (Maybe Text)
msqdAccessToken
  = lens _msqdAccessToken
      (\ s a -> s{_msqdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
msqdUploadType :: Lens' MattersSavedQueriesDelete (Maybe Text)
msqdUploadType
  = lens _msqdUploadType
      (\ s a -> s{_msqdUploadType = a})

-- | The ID of the matter to delete the saved query from.
msqdMatterId :: Lens' MattersSavedQueriesDelete Text
msqdMatterId
  = lens _msqdMatterId (\ s a -> s{_msqdMatterId = a})

-- | JSONP
msqdCallback :: Lens' MattersSavedQueriesDelete (Maybe Text)
msqdCallback
  = lens _msqdCallback (\ s a -> s{_msqdCallback = a})

instance GoogleRequest MattersSavedQueriesDelete
         where
        type Rs MattersSavedQueriesDelete = Empty
        type Scopes MattersSavedQueriesDelete =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersSavedQueriesDelete'{..}
          = go _msqdMatterId _msqdSavedQueryId _msqdXgafv
              _msqdUploadProtocol
              _msqdAccessToken
              _msqdUploadType
              _msqdCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersSavedQueriesDeleteResource)
                      mempty
