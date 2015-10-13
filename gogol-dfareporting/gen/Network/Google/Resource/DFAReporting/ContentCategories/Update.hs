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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing content category.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingContentCategoriesUpdate@.
module Network.Google.Resource.DFAReporting.ContentCategories.Update
    (
    -- * REST Resource
      ContentCategoriesUpdateResource

    -- * Creating a Request
    , contentCategoriesUpdate'
    , ContentCategoriesUpdate'

    -- * Request Lenses
    , ccuProFileId
    , ccuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesUpdate@ method which the
-- 'ContentCategoriesUpdate'' request conforms to.
type ContentCategoriesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] ContentCategory :>
               Put '[JSON] ContentCategory

-- | Updates an existing content category.
--
-- /See:/ 'contentCategoriesUpdate'' smart constructor.
data ContentCategoriesUpdate' = ContentCategoriesUpdate'
    { _ccuProFileId :: !Int64
    , _ccuPayload   :: !ContentCategory
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccuProFileId'
--
-- * 'ccuPayload'
contentCategoriesUpdate'
    :: Int64 -- ^ 'profileId'
    -> ContentCategory -- ^ 'payload'
    -> ContentCategoriesUpdate'
contentCategoriesUpdate' pCcuProFileId_ pCcuPayload_ =
    ContentCategoriesUpdate'
    { _ccuProFileId = pCcuProFileId_
    , _ccuPayload = pCcuPayload_
    }

-- | User profile ID associated with this request.
ccuProFileId :: Lens' ContentCategoriesUpdate' Int64
ccuProFileId
  = lens _ccuProFileId (\ s a -> s{_ccuProFileId = a})

-- | Multipart request metadata.
ccuPayload :: Lens' ContentCategoriesUpdate' ContentCategory
ccuPayload
  = lens _ccuPayload (\ s a -> s{_ccuPayload = a})

instance GoogleRequest ContentCategoriesUpdate' where
        type Rs ContentCategoriesUpdate' = ContentCategory
        requestClient ContentCategoriesUpdate'{..}
          = go _ccuProFileId (Just AltJSON) _ccuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesUpdateResource)
                      mempty
