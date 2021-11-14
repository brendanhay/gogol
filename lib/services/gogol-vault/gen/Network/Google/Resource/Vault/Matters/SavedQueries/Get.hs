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
-- Module      : Network.Google.Resource.Vault.Matters.SavedQueries.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified saved query.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.savedQueries.get@.
module Network.Google.Resource.Vault.Matters.SavedQueries.Get
    (
    -- * REST Resource
      MattersSavedQueriesGetResource

    -- * Creating a Request
    , mattersSavedQueriesGet
    , MattersSavedQueriesGet

    -- * Request Lenses
    , msqgXgafv
    , msqgSavedQueryId
    , msqgUploadProtocol
    , msqgAccessToken
    , msqgUploadType
    , msqgMatterId
    , msqgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.savedQueries.get@ method which the
-- 'MattersSavedQueriesGet' request conforms to.
type MattersSavedQueriesGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] SavedQuery

-- | Retrieves the specified saved query.
--
-- /See:/ 'mattersSavedQueriesGet' smart constructor.
data MattersSavedQueriesGet =
  MattersSavedQueriesGet'
    { _msqgXgafv :: !(Maybe Xgafv)
    , _msqgSavedQueryId :: !Text
    , _msqgUploadProtocol :: !(Maybe Text)
    , _msqgAccessToken :: !(Maybe Text)
    , _msqgUploadType :: !(Maybe Text)
    , _msqgMatterId :: !Text
    , _msqgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersSavedQueriesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msqgXgafv'
--
-- * 'msqgSavedQueryId'
--
-- * 'msqgUploadProtocol'
--
-- * 'msqgAccessToken'
--
-- * 'msqgUploadType'
--
-- * 'msqgMatterId'
--
-- * 'msqgCallback'
mattersSavedQueriesGet
    :: Text -- ^ 'msqgSavedQueryId'
    -> Text -- ^ 'msqgMatterId'
    -> MattersSavedQueriesGet
mattersSavedQueriesGet pMsqgSavedQueryId_ pMsqgMatterId_ =
  MattersSavedQueriesGet'
    { _msqgXgafv = Nothing
    , _msqgSavedQueryId = pMsqgSavedQueryId_
    , _msqgUploadProtocol = Nothing
    , _msqgAccessToken = Nothing
    , _msqgUploadType = Nothing
    , _msqgMatterId = pMsqgMatterId_
    , _msqgCallback = Nothing
    }


-- | V1 error format.
msqgXgafv :: Lens' MattersSavedQueriesGet (Maybe Xgafv)
msqgXgafv
  = lens _msqgXgafv (\ s a -> s{_msqgXgafv = a})

-- | ID of the saved query to retrieve.
msqgSavedQueryId :: Lens' MattersSavedQueriesGet Text
msqgSavedQueryId
  = lens _msqgSavedQueryId
      (\ s a -> s{_msqgSavedQueryId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
msqgUploadProtocol :: Lens' MattersSavedQueriesGet (Maybe Text)
msqgUploadProtocol
  = lens _msqgUploadProtocol
      (\ s a -> s{_msqgUploadProtocol = a})

-- | OAuth access token.
msqgAccessToken :: Lens' MattersSavedQueriesGet (Maybe Text)
msqgAccessToken
  = lens _msqgAccessToken
      (\ s a -> s{_msqgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
msqgUploadType :: Lens' MattersSavedQueriesGet (Maybe Text)
msqgUploadType
  = lens _msqgUploadType
      (\ s a -> s{_msqgUploadType = a})

-- | The ID of the matter to get the saved query from.
msqgMatterId :: Lens' MattersSavedQueriesGet Text
msqgMatterId
  = lens _msqgMatterId (\ s a -> s{_msqgMatterId = a})

-- | JSONP
msqgCallback :: Lens' MattersSavedQueriesGet (Maybe Text)
msqgCallback
  = lens _msqgCallback (\ s a -> s{_msqgCallback = a})

instance GoogleRequest MattersSavedQueriesGet where
        type Rs MattersSavedQueriesGet = SavedQuery
        type Scopes MattersSavedQueriesGet =
             '["https://www.googleapis.com/auth/ediscovery",
               "https://www.googleapis.com/auth/ediscovery.readonly"]
        requestClient MattersSavedQueriesGet'{..}
          = go _msqgMatterId _msqgSavedQueryId _msqgXgafv
              _msqgUploadProtocol
              _msqgAccessToken
              _msqgUploadType
              _msqgCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersSavedQueriesGetResource)
                      mempty
