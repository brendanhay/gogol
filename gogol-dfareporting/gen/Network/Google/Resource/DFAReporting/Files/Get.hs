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
-- Module      : Network.Google.Resource.DFAReporting.Files.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report file by its report ID and file ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.files.get@.
module Network.Google.Resource.DFAReporting.Files.Get
    (
    -- * REST Resource
      FilesGetResource

    -- * Creating a Request
    , filesGet
    , FilesGet

    -- * Request Lenses
    , fgReportId
    , fgFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.files.get@ method which the
-- 'FilesGet' request conforms to.
type FilesGetResource =
     "dfareporting" :>
       "v2.5beta1" :>
         "reports" :>
           Capture "reportId" (Textual Int64) :>
             "files" :>
               Capture "fileId" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] File
       :<|>
       "dfareporting" :>
         "v2.5beta1" :>
           "reports" :>
             Capture "reportId" (Textual Int64) :>
               "files" :>
                 Capture "fileId" (Textual Int64) :>
                   QueryParam "alt" AltMedia :>
                     Get '[OctetStream] Stream

-- | Retrieves a report file by its report ID and file ID.
--
-- /See:/ 'filesGet' smart constructor.
data FilesGet = FilesGet'
    { _fgReportId :: !(Textual Int64)
    , _fgFileId   :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgReportId'
--
-- * 'fgFileId'
filesGet
    :: Int64 -- ^ 'fgReportId'
    -> Int64 -- ^ 'fgFileId'
    -> FilesGet
filesGet pFgReportId_ pFgFileId_ =
    FilesGet'
    { _fgReportId = _Coerce # pFgReportId_
    , _fgFileId = _Coerce # pFgFileId_
    }

-- | The ID of the report.
fgReportId :: Lens' FilesGet Int64
fgReportId
  = lens _fgReportId (\ s a -> s{_fgReportId = a}) .
      _Coerce

-- | The ID of the report file.
fgFileId :: Lens' FilesGet Int64
fgFileId
  = lens _fgFileId (\ s a -> s{_fgFileId = a}) .
      _Coerce

instance GoogleRequest FilesGet where
        type Rs FilesGet = File
        type Scopes FilesGet =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient FilesGet'{..}
          = go _fgReportId _fgFileId (Just AltJSON)
              dFAReportingService
          where go :<|> _
                  = buildClient (Proxy :: Proxy FilesGetResource)
                      mempty

instance GoogleRequest (MediaDownload FilesGet) where
        type Rs (MediaDownload FilesGet) = Stream
        type Scopes (MediaDownload FilesGet) =
             Scopes FilesGet
        requestClient (MediaDownload FilesGet'{..})
          = go _fgReportId _fgFileId (Just AltMedia)
              dFAReportingService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy FilesGetResource)
                      mempty
