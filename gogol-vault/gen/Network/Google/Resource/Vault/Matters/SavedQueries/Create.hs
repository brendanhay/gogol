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
-- Module      : Network.Google.Resource.Vault.Matters.SavedQueries.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a saved query.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.savedQueries.create@.
module Network.Google.Resource.Vault.Matters.SavedQueries.Create
    (
    -- * REST Resource
      MattersSavedQueriesCreateResource

    -- * Creating a Request
    , mattersSavedQueriesCreate
    , MattersSavedQueriesCreate

    -- * Request Lenses
    , msqcXgafv
    , msqcUploadProtocol
    , msqcAccessToken
    , msqcUploadType
    , msqcPayload
    , msqcMatterId
    , msqcCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.savedQueries.create@ method which the
-- 'MattersSavedQueriesCreate' request conforms to.
type MattersSavedQueriesCreateResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "savedQueries" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SavedQuery :> Post '[JSON] SavedQuery

-- | Creates a saved query.
--
-- /See:/ 'mattersSavedQueriesCreate' smart constructor.
data MattersSavedQueriesCreate =
  MattersSavedQueriesCreate'
    { _msqcXgafv :: !(Maybe Xgafv)
    , _msqcUploadProtocol :: !(Maybe Text)
    , _msqcAccessToken :: !(Maybe Text)
    , _msqcUploadType :: !(Maybe Text)
    , _msqcPayload :: !SavedQuery
    , _msqcMatterId :: !Text
    , _msqcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersSavedQueriesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msqcXgafv'
--
-- * 'msqcUploadProtocol'
--
-- * 'msqcAccessToken'
--
-- * 'msqcUploadType'
--
-- * 'msqcPayload'
--
-- * 'msqcMatterId'
--
-- * 'msqcCallback'
mattersSavedQueriesCreate
    :: SavedQuery -- ^ 'msqcPayload'
    -> Text -- ^ 'msqcMatterId'
    -> MattersSavedQueriesCreate
mattersSavedQueriesCreate pMsqcPayload_ pMsqcMatterId_ =
  MattersSavedQueriesCreate'
    { _msqcXgafv = Nothing
    , _msqcUploadProtocol = Nothing
    , _msqcAccessToken = Nothing
    , _msqcUploadType = Nothing
    , _msqcPayload = pMsqcPayload_
    , _msqcMatterId = pMsqcMatterId_
    , _msqcCallback = Nothing
    }


-- | V1 error format.
msqcXgafv :: Lens' MattersSavedQueriesCreate (Maybe Xgafv)
msqcXgafv
  = lens _msqcXgafv (\ s a -> s{_msqcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
msqcUploadProtocol :: Lens' MattersSavedQueriesCreate (Maybe Text)
msqcUploadProtocol
  = lens _msqcUploadProtocol
      (\ s a -> s{_msqcUploadProtocol = a})

-- | OAuth access token.
msqcAccessToken :: Lens' MattersSavedQueriesCreate (Maybe Text)
msqcAccessToken
  = lens _msqcAccessToken
      (\ s a -> s{_msqcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
msqcUploadType :: Lens' MattersSavedQueriesCreate (Maybe Text)
msqcUploadType
  = lens _msqcUploadType
      (\ s a -> s{_msqcUploadType = a})

-- | Multipart request metadata.
msqcPayload :: Lens' MattersSavedQueriesCreate SavedQuery
msqcPayload
  = lens _msqcPayload (\ s a -> s{_msqcPayload = a})

-- | The ID of the matter to create the saved query in.
msqcMatterId :: Lens' MattersSavedQueriesCreate Text
msqcMatterId
  = lens _msqcMatterId (\ s a -> s{_msqcMatterId = a})

-- | JSONP
msqcCallback :: Lens' MattersSavedQueriesCreate (Maybe Text)
msqcCallback
  = lens _msqcCallback (\ s a -> s{_msqcCallback = a})

instance GoogleRequest MattersSavedQueriesCreate
         where
        type Rs MattersSavedQueriesCreate = SavedQuery
        type Scopes MattersSavedQueriesCreate =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersSavedQueriesCreate'{..}
          = go _msqcMatterId _msqcXgafv _msqcUploadProtocol
              _msqcAccessToken
              _msqcUploadType
              _msqcCallback
              (Just AltJSON)
              _msqcPayload
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersSavedQueriesCreateResource)
                      mempty
