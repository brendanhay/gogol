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
-- Module      : Network.Google.Resource.Analytics.Management.ProFiles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists views (profiles) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.list@.
module Network.Google.Resource.Analytics.Management.ProFiles.List
    (
    -- * REST Resource
      ManagementProFilesListResource

    -- * Creating a Request
    , managementProFilesList
    , ManagementProFilesList

    -- * Request Lenses
    , mpflWebPropertyId
    , mpflAccountId
    , mpflStartIndex
    , mpflMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.profiles.list@ method which the
-- 'ManagementProFilesList' request conforms to.
type ManagementProFilesListResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "profiles" :>
                     QueryParam "start-index" (Textual Int32) :>
                       QueryParam "max-results" (Textual Int32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ProFiles

-- | Lists views (profiles) to which the user has access.
--
-- /See:/ 'managementProFilesList' smart constructor.
data ManagementProFilesList = ManagementProFilesList
    { _mpflWebPropertyId :: !Text
    , _mpflAccountId     :: !Text
    , _mpflStartIndex    :: !(Maybe (Textual Int32))
    , _mpflMaxResults    :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFilesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpflWebPropertyId'
--
-- * 'mpflAccountId'
--
-- * 'mpflStartIndex'
--
-- * 'mpflMaxResults'
managementProFilesList
    :: Text -- ^ 'mpflWebPropertyId'
    -> Text -- ^ 'mpflAccountId'
    -> ManagementProFilesList
managementProFilesList pMpflWebPropertyId_ pMpflAccountId_ =
    ManagementProFilesList
    { _mpflWebPropertyId = pMpflWebPropertyId_
    , _mpflAccountId = pMpflAccountId_
    , _mpflStartIndex = Nothing
    , _mpflMaxResults = Nothing
    }

-- | Web property ID for the views (profiles) to retrieve. Can either be a
-- specific web property ID or \'~all\', which refers to all the web
-- properties to which the user has access.
mpflWebPropertyId :: Lens' ManagementProFilesList Text
mpflWebPropertyId
  = lens _mpflWebPropertyId
      (\ s a -> s{_mpflWebPropertyId = a})

-- | Account ID for the view (profiles) to retrieve. Can either be a specific
-- account ID or \'~all\', which refers to all the accounts to which the
-- user has access.
mpflAccountId :: Lens' ManagementProFilesList Text
mpflAccountId
  = lens _mpflAccountId
      (\ s a -> s{_mpflAccountId = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mpflStartIndex :: Lens' ManagementProFilesList (Maybe Int32)
mpflStartIndex
  = lens _mpflStartIndex
      (\ s a -> s{_mpflStartIndex = a})
      . mapping _Coerce

-- | The maximum number of views (profiles) to include in this response.
mpflMaxResults :: Lens' ManagementProFilesList (Maybe Int32)
mpflMaxResults
  = lens _mpflMaxResults
      (\ s a -> s{_mpflMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ManagementProFilesList where
        type Rs ManagementProFilesList = ProFiles
        requestClient ManagementProFilesList{..}
          = go _mpflAccountId _mpflWebPropertyId
              _mpflStartIndex
              _mpflMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementProFilesListResource)
                      mempty
