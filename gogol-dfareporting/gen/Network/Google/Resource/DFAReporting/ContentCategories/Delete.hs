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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing content category.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.contentCategories.delete@.
module Network.Google.Resource.DFAReporting.ContentCategories.Delete
    (
    -- * REST Resource
      ContentCategoriesDeleteResource

    -- * Creating a Request
    , contentCategoriesDelete
    , ContentCategoriesDelete

    -- * Request Lenses
    , ccdProFileId
    , ccdId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.contentCategories.delete@ method which the
-- 'ContentCategoriesDelete' request conforms to.
type ContentCategoriesDeleteResource =
     "dfareporting" :>
       "v2.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "contentCategories" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing content category.
--
-- /See:/ 'contentCategoriesDelete' smart constructor.
data ContentCategoriesDelete = ContentCategoriesDelete'
    { _ccdProFileId :: !(Textual Int64)
    , _ccdId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdProFileId'
--
-- * 'ccdId'
contentCategoriesDelete
    :: Int64 -- ^ 'ccdProFileId'
    -> Int64 -- ^ 'ccdId'
    -> ContentCategoriesDelete
contentCategoriesDelete pCcdProFileId_ pCcdId_ =
    ContentCategoriesDelete'
    { _ccdProFileId = _Coerce # pCcdProFileId_
    , _ccdId = _Coerce # pCcdId_
    }

-- | User profile ID associated with this request.
ccdProFileId :: Lens' ContentCategoriesDelete Int64
ccdProFileId
  = lens _ccdProFileId (\ s a -> s{_ccdProFileId = a})
      . _Coerce

-- | Content category ID.
ccdId :: Lens' ContentCategoriesDelete Int64
ccdId
  = lens _ccdId (\ s a -> s{_ccdId = a}) . _Coerce

instance GoogleRequest ContentCategoriesDelete where
        type Rs ContentCategoriesDelete = ()
        type Scopes ContentCategoriesDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ContentCategoriesDelete'{..}
          = go _ccdProFileId _ccdId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesDeleteResource)
                      mempty
