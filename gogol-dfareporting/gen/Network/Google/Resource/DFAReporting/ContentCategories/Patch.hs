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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing content category. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.contentCategories.patch@.
module Network.Google.Resource.DFAReporting.ContentCategories.Patch
    (
    -- * REST Resource
      ContentCategoriesPatchResource

    -- * Creating a Request
    , contentCategoriesPatch
    , ContentCategoriesPatch

    -- * Request Lenses
    , ccpProFileId
    , ccpPayload
    , ccpId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.contentCategories.patch@ method which the
-- 'ContentCategoriesPatch' request conforms to.
type ContentCategoriesPatchResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "contentCategories" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ContentCategory :>
                     Patch '[JSON] ContentCategory

-- | Updates an existing content category. This method supports patch
-- semantics.
--
-- /See:/ 'contentCategoriesPatch' smart constructor.
data ContentCategoriesPatch = ContentCategoriesPatch'
    { _ccpProFileId :: !(Textual Int64)
    , _ccpPayload   :: !ContentCategory
    , _ccpId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpProFileId'
--
-- * 'ccpPayload'
--
-- * 'ccpId'
contentCategoriesPatch
    :: Int64 -- ^ 'ccpProFileId'
    -> ContentCategory -- ^ 'ccpPayload'
    -> Int64 -- ^ 'ccpId'
    -> ContentCategoriesPatch
contentCategoriesPatch pCcpProFileId_ pCcpPayload_ pCcpId_ =
    ContentCategoriesPatch'
    { _ccpProFileId = _Coerce # pCcpProFileId_
    , _ccpPayload = pCcpPayload_
    , _ccpId = _Coerce # pCcpId_
    }

-- | User profile ID associated with this request.
ccpProFileId :: Lens' ContentCategoriesPatch Int64
ccpProFileId
  = lens _ccpProFileId (\ s a -> s{_ccpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
ccpPayload :: Lens' ContentCategoriesPatch ContentCategory
ccpPayload
  = lens _ccpPayload (\ s a -> s{_ccpPayload = a})

-- | Content category ID.
ccpId :: Lens' ContentCategoriesPatch Int64
ccpId
  = lens _ccpId (\ s a -> s{_ccpId = a}) . _Coerce

instance GoogleRequest ContentCategoriesPatch where
        type Rs ContentCategoriesPatch = ContentCategory
        type Scopes ContentCategoriesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ContentCategoriesPatch'{..}
          = go _ccpProFileId (Just _ccpId) (Just AltJSON)
              _ccpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesPatchResource)
                      mempty
