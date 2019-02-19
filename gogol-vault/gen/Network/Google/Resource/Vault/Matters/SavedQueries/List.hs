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
-- Module      : Network.Google.Resource.Vault.Matters.SavedQueries.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists saved queries within a matter. An empty page token in
-- ListSavedQueriesResponse denotes no more saved queries to list.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.savedQueries.list@.
module Network.Google.Resource.Vault.Matters.SavedQueries.List
    (
    -- * REST Resource
      MattersSavedQueriesListResource

    -- * Creating a Request
    , mattersSavedQueriesList
    , MattersSavedQueriesList

    -- * Request Lenses
    , msqlXgafv
    , msqlUploadProtocol
    , msqlAccessToken
    , msqlUploadType
    , msqlMatterId
    , msqlPageToken
    , msqlPageSize
    , msqlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.savedQueries.list@ method which the
-- 'MattersSavedQueriesList' request conforms to.
type MattersSavedQueriesListResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "savedQueries" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListSavedQueriesResponse

-- | Lists saved queries within a matter. An empty page token in
-- ListSavedQueriesResponse denotes no more saved queries to list.
--
-- /See:/ 'mattersSavedQueriesList' smart constructor.
data MattersSavedQueriesList =
  MattersSavedQueriesList'
    { _msqlXgafv          :: !(Maybe Xgafv)
    , _msqlUploadProtocol :: !(Maybe Text)
    , _msqlAccessToken    :: !(Maybe Text)
    , _msqlUploadType     :: !(Maybe Text)
    , _msqlMatterId       :: !Text
    , _msqlPageToken      :: !(Maybe Text)
    , _msqlPageSize       :: !(Maybe (Textual Int32))
    , _msqlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MattersSavedQueriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msqlXgafv'
--
-- * 'msqlUploadProtocol'
--
-- * 'msqlAccessToken'
--
-- * 'msqlUploadType'
--
-- * 'msqlMatterId'
--
-- * 'msqlPageToken'
--
-- * 'msqlPageSize'
--
-- * 'msqlCallback'
mattersSavedQueriesList
    :: Text -- ^ 'msqlMatterId'
    -> MattersSavedQueriesList
mattersSavedQueriesList pMsqlMatterId_ =
  MattersSavedQueriesList'
    { _msqlXgafv = Nothing
    , _msqlUploadProtocol = Nothing
    , _msqlAccessToken = Nothing
    , _msqlUploadType = Nothing
    , _msqlMatterId = pMsqlMatterId_
    , _msqlPageToken = Nothing
    , _msqlPageSize = Nothing
    , _msqlCallback = Nothing
    }

-- | V1 error format.
msqlXgafv :: Lens' MattersSavedQueriesList (Maybe Xgafv)
msqlXgafv
  = lens _msqlXgafv (\ s a -> s{_msqlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
msqlUploadProtocol :: Lens' MattersSavedQueriesList (Maybe Text)
msqlUploadProtocol
  = lens _msqlUploadProtocol
      (\ s a -> s{_msqlUploadProtocol = a})

-- | OAuth access token.
msqlAccessToken :: Lens' MattersSavedQueriesList (Maybe Text)
msqlAccessToken
  = lens _msqlAccessToken
      (\ s a -> s{_msqlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
msqlUploadType :: Lens' MattersSavedQueriesList (Maybe Text)
msqlUploadType
  = lens _msqlUploadType
      (\ s a -> s{_msqlUploadType = a})

-- | The matter id of the parent matter for which the saved queries are to be
-- retrieved.
msqlMatterId :: Lens' MattersSavedQueriesList Text
msqlMatterId
  = lens _msqlMatterId (\ s a -> s{_msqlMatterId = a})

-- | The pagination token as returned in the previous response. An empty
-- token means start from the beginning.
msqlPageToken :: Lens' MattersSavedQueriesList (Maybe Text)
msqlPageToken
  = lens _msqlPageToken
      (\ s a -> s{_msqlPageToken = a})

-- | The maximum number of saved queries to return.
msqlPageSize :: Lens' MattersSavedQueriesList (Maybe Int32)
msqlPageSize
  = lens _msqlPageSize (\ s a -> s{_msqlPageSize = a})
      . mapping _Coerce

-- | JSONP
msqlCallback :: Lens' MattersSavedQueriesList (Maybe Text)
msqlCallback
  = lens _msqlCallback (\ s a -> s{_msqlCallback = a})

instance GoogleRequest MattersSavedQueriesList where
        type Rs MattersSavedQueriesList =
             ListSavedQueriesResponse
        type Scopes MattersSavedQueriesList =
             '["https://www.googleapis.com/auth/ediscovery",
               "https://www.googleapis.com/auth/ediscovery.readonly"]
        requestClient MattersSavedQueriesList'{..}
          = go _msqlMatterId _msqlXgafv _msqlUploadProtocol
              _msqlAccessToken
              _msqlUploadType
              _msqlPageToken
              _msqlPageSize
              _msqlCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersSavedQueriesListResource)
                      mempty
