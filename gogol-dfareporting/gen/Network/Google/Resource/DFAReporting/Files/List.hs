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
-- Module      : Network.Google.Resource.DFAReporting.Files.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists files for a user profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.files.list@.
module Network.Google.Resource.DFAReporting.Files.List
    (
    -- * REST Resource
      FilesListResource

    -- * Creating a Request
    , filesList
    , FilesList

    -- * Request Lenses
    , flProFileId
    , flSortOrder
    , flScope
    , flPageToken
    , flSortField
    , flMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.files.list@ method which the
-- 'FilesList' request conforms to.
type FilesListResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "files" :>
               QueryParam "sortOrder" FilesListSortOrder :>
                 QueryParam "scope" FilesListScope :>
                   QueryParam "pageToken" Text :>
                     QueryParam "sortField" FilesListSortField :>
                       QueryParam "maxResults" (Textual Int32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] FileList

-- | Lists files for a user profile.
--
-- /See:/ 'filesList' smart constructor.
data FilesList =
  FilesList'
    { _flProFileId  :: !(Textual Int64)
    , _flSortOrder  :: !FilesListSortOrder
    , _flScope      :: !FilesListScope
    , _flPageToken  :: !(Maybe Text)
    , _flSortField  :: !FilesListSortField
    , _flMaxResults :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FilesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flProFileId'
--
-- * 'flSortOrder'
--
-- * 'flScope'
--
-- * 'flPageToken'
--
-- * 'flSortField'
--
-- * 'flMaxResults'
filesList
    :: Int64 -- ^ 'flProFileId'
    -> FilesList
filesList pFlProFileId_ =
  FilesList'
    { _flProFileId = _Coerce # pFlProFileId_
    , _flSortOrder = FLSODescending
    , _flScope = FLSMine
    , _flPageToken = Nothing
    , _flSortField = FLSFLastModifiedTime
    , _flMaxResults = 10
    }

-- | The DFA profile ID.
flProFileId :: Lens' FilesList Int64
flProFileId
  = lens _flProFileId (\ s a -> s{_flProFileId = a}) .
      _Coerce

-- | Order of sorted results.
flSortOrder :: Lens' FilesList FilesListSortOrder
flSortOrder
  = lens _flSortOrder (\ s a -> s{_flSortOrder = a})

-- | The scope that defines which results are returned.
flScope :: Lens' FilesList FilesListScope
flScope = lens _flScope (\ s a -> s{_flScope = a})

-- | The value of the nextToken from the previous result page.
flPageToken :: Lens' FilesList (Maybe Text)
flPageToken
  = lens _flPageToken (\ s a -> s{_flPageToken = a})

-- | The field by which to sort the list.
flSortField :: Lens' FilesList FilesListSortField
flSortField
  = lens _flSortField (\ s a -> s{_flSortField = a})

-- | Maximum number of results to return.
flMaxResults :: Lens' FilesList Int32
flMaxResults
  = lens _flMaxResults (\ s a -> s{_flMaxResults = a})
      . _Coerce

instance GoogleRequest FilesList where
        type Rs FilesList = FileList
        type Scopes FilesList =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient FilesList'{..}
          = go _flProFileId (Just _flSortOrder) (Just _flScope)
              _flPageToken
              (Just _flSortField)
              (Just _flMaxResults)
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy FilesListResource)
                      mempty
