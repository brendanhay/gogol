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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new content category.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.contentCategories.insert@.
module Network.Google.Resource.DFAReporting.ContentCategories.Insert
    (
    -- * REST Resource
      ContentCategoriesInsertResource

    -- * Creating a Request
    , contentCategoriesInsert
    , ContentCategoriesInsert

    -- * Request Lenses
    , cciProFileId
    , cciPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.contentCategories.insert@ method which the
-- 'ContentCategoriesInsert' request conforms to.
type ContentCategoriesInsertResource =
     "dfareporting" :>
       "v2.6" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "contentCategories" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ContentCategory :>
                   Post '[JSON] ContentCategory

-- | Inserts a new content category.
--
-- /See:/ 'contentCategoriesInsert' smart constructor.
data ContentCategoriesInsert = ContentCategoriesInsert'
    { _cciProFileId :: !(Textual Int64)
    , _cciPayload   :: !ContentCategory
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cciProFileId'
--
-- * 'cciPayload'
contentCategoriesInsert
    :: Int64 -- ^ 'cciProFileId'
    -> ContentCategory -- ^ 'cciPayload'
    -> ContentCategoriesInsert
contentCategoriesInsert pCciProFileId_ pCciPayload_ =
    ContentCategoriesInsert'
    { _cciProFileId = _Coerce # pCciProFileId_
    , _cciPayload = pCciPayload_
    }

-- | User profile ID associated with this request.
cciProFileId :: Lens' ContentCategoriesInsert Int64
cciProFileId
  = lens _cciProFileId (\ s a -> s{_cciProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cciPayload :: Lens' ContentCategoriesInsert ContentCategory
cciPayload
  = lens _cciPayload (\ s a -> s{_cciPayload = a})

instance GoogleRequest ContentCategoriesInsert where
        type Rs ContentCategoriesInsert = ContentCategory
        type Scopes ContentCategoriesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ContentCategoriesInsert'{..}
          = go _cciProFileId (Just AltJSON) _cciPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesInsertResource)
                      mempty
